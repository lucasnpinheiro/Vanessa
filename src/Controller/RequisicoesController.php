<?php

namespace App\Controller;

use App\Controller\AppController;

/**
 * Requisicoes Controller
 *
 * @property \App\Model\Table\RequisicoesTable $Requisicoes
 */
class RequisicoesController extends AppController {

    public function __construct(\Cake\Network\Request $request = null, \Cake\Network\Response $response = null, $name = null, $eventManager = null, $components = null) {
        parent::__construct($request, $response, $name, $eventManager, $components);
        $this->set('titulo_pagina', 'Requisições');
    }

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index() {

        $query = $this->Requisicoes->find('search', $this->Requisicoes->filterParams($this->request->query))->contain(['Produtos']);
        $this->set('requisicoes', $this->paginate($query));
        $this->set('_serialize', ['requisicoes']);
        $this->set('produtos', $this->Requisicoes->Produtos->find('list'));
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|void Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $requisico = $this->Requisicoes->newEntity();
        if ($this->request->is('post')) {
            $requisico = $this->Requisicoes->patchEntity($requisico, $this->request->data);
            if ($this->Requisicoes->save($requisico)) {
                $this->Flash->success(__('The requisico has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The requisico could not be saved. Please, try again.'));
            }
        }
        $produtos = $this->Requisicoes->Produtos->find('list');
        $this->set(compact('requisico', 'produtos'));
        $this->set('_serialize', ['requisico']);
    }

}
