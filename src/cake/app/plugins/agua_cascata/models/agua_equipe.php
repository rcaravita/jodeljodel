<?php
/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class AguaEquipe extends AguaCascataAppModel
{
    var $name = 'AguaEquipe';
    
    var $hasOne = array('AguaCascata.AguaProfessor');

    var $actsAs = array('AguaCascata.AguaCascata');

    function afterFind($results, $primary)
    {
        if ($primary) {
            foreach ($results as $key => $val)
            {
                $results[$key]['AguaProfessor']['nome'] = $results[$key]['AguaProfessor']['nome'] . " Equipe";
            }
            return $results;
        }
    }

    function afterFindCascata($results){
        foreach ($results as $key => $val)
        {
            //caso em que é hasMany, não sei se esse caso eu preciso tratar aqui
            //ou no behaviorCascata
            if (isset($results[$key]['AguaProfessor'][0])){
                $results[$key]['AguaProfessor'][0]['nome'] = $results[$key]['AguaProfessor'][0]['nome'] . " Equipe";
            } else
            $results[$key]['AguaProfessor']['nome'] = $results[$key]['AguaProfessor']['nome'] . " Equipe";
        }
        return $results;
    }

    function pegaTodas(){
        return $this->find('all');
    }
}

?>