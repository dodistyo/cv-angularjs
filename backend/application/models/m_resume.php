<?php if(!defined('BASEPATH')) exit('No direct script allowed');

class M_resume extends CI_Model{

	function get_resume() {
            
            $query = $this->db->get('v_resume');
            $get = $query->result_array();
            
            $result = array();
            
            return $get;
	}

	function get_person() {
		return $this->db->get('person');
	}

	function get_bio() {
		return $this->db->get('bio');
	}

	function get_education() {
		return $this->db->get('education');
	}

	function get_experience() {
		return $this->db->get('experience');
	}

	function get_socmed() {
		return $this->db->get('social_media');
	}
        
        function get_skill() {
            
            $query = $this->db->get('skills');
          

        $arrTreeById = array();
        $arrTree = $query->result();


        $objTreeWrapper = new stdClass();
        $objTreeWrapper->arrChilds = array();

        foreach($arrTree AS $row)
        {
            $arrTreeById[$row->id] = $row;
            $row->arrChilds = array();
        }

        foreach($arrTree AS $objItem)
        {
            if (isset($arrTreeById[$objItem->parent_id]))   $arrTreeById[$objItem->parent_id]->arrChilds[] = $objItem;
            elseif ($objItem->parent_id == 0)
            {
                $objTreeWrapper->arrChilds[] = $objItem;
            }
        }

        return $objTreeWrapper;
            
            
	}

}