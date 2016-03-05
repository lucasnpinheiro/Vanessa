<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * PessoasTipos Controller
 *
 * @property \App\Model\Table\PessoasTiposTable $PessoasTipos
 */
class PessoasTiposController extends AppController
{

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Pessoas']
        ];
        $pessoasTipos = $this->paginate($this->PessoasTipos);

        $this->set(compact('pessoasTipos'));
        $this->set('_serialize', ['pessoasTipos']);
    }

    /**
     * View method
     *
     * @param string|null $id Pessoas Tipo id.
     * @return \Cake\Network\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $pessoasTipo = $this->PessoasTipos->get($id, [
            'contain' => ['Pessoas']
        ]);

        $this->set('pessoasTipo', $pessoasTipo);
        $this->set('_serialize', ['pessoasTipo']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $pessoasTipo = $this->PessoasTipos->newEntity();
        if ($this->request->is('post')) {
            $pessoasTipo = $this->PessoasTipos->patchEntity($pessoasTipo, $this->request->data);
            if ($this->PessoasTipos->save($pessoasTipo)) {
                $this->Flash->success(__('The pessoas tipo has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The pessoas tipo could not be saved. Please, try again.'));
            }
        }
        $pessoas = $this->PessoasTipos->Pessoas->find('list', ['limit' => 200]);
        $this->set(compact('pessoasTipo', 'pessoas'));
        $this->set('_serialize', ['pessoasTipo']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Pessoas Tipo id.
     * @return \Cake\Network\Response|void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $pessoasTipo = $this->PessoasTipos->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $pessoasTipo = $this->PessoasTipos->patchEntity($pessoasTipo, $this->request->data);
            if ($this->PessoasTipos->save($pessoasTipo)) {
                $this->Flash->success(__('The pessoas tipo has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The pessoas tipo could not be saved. Please, try again.'));
            }
        }
        $pessoas = $this->PessoasTipos->Pessoas->find('list', ['limit' => 200]);
        $this->set(compact('pessoasTipo', 'pessoas'));
        $this->set('_serialize', ['pessoasTipo']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Pessoas Tipo id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $pessoasTipo = $this->PessoasTipos->get($id);
        if ($this->PessoasTipos->delete($pessoasTipo)) {
            $this->Flash->success(__('The pessoas tipo has been deleted.'));
        } else {
            $this->Flash->error(__('The pessoas tipo could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
