<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * CaixasMovimento Entity.
 *
 * @property int $id
 * @property int $caixas_diario_id
 * @property \App\Model\Entity\CaixasDiario $caixas_diario
 * @property int $status
 * @property float $valor
 * @property string $descricao
 * @property int $grupo_id
 * @property \App\Model\Entity\Grupo $grupo
 * @property \Cake\I18n\Time $created
 * @property \Cake\I18n\Time $modified
 */
class CaixasMovimento extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        '*' => true,
        'id' => false,
    ];
}
