package com.ian.media.dao;

import java.util.List;

import com.ian.media.model.Floatimg;

public interface FloatimgMapper extends BaseDao<Floatimg, String>{

	List<Floatimg> getFloatList();

}
