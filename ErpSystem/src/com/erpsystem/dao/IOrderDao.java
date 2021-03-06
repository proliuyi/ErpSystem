package com.erpsystem.dao;

import java.sql.SQLException;
import java.util.List;

import com.erpsystem.domain.Order;

/**
 * @功能 用来为订单提供dao层的接口
 * @文件 IOrderDao.java
 * @作者 张洪刚
 * @时间 2018-10-01 08:53
 * @地点 成都
 */
public interface IOrderDao {

	/**
	 * 查询订单的 总条数
	 * @return
	 */

	Integer findCount(String cname, String orderNum,Integer orderType) throws SQLException; 
	Integer findCount(String cname, String orderNum) throws SQLException; 
	/**
	 * 分页查询数据
	 * @param index  当前从第几条开始查询
	 * @param currentCount  一页的条数
	 * @return
	 */
	List<Order> findPage(String cname, String orderNum, Integer orderType, Integer index, Integer currentCount) throws SQLException;

	List<Order> findPage(String cname, Integer orderType, Integer index, Integer currentCount) throws SQLException;
	
	List<Order> findPageByorderNum(String orderNum, Integer orderType, Integer index, Integer currentCount) throws SQLException;
	
	List<Order> findPage(Integer orderType, Integer index, Integer currentCount) throws SQLException;
	
	List<Order> findPage(Integer index, Integer currentCount) throws SQLException;
	
	List<Order> findPage(String cname, String orderNum, Integer index, Integer currentCount) throws SQLException;
	
	List<Order> findPage(String cname,  Integer index, Integer currentCount) throws SQLException;

	List<Order> findPageByorderNum(String orderNum, Integer index, Integer currentCount) throws SQLException;
	/**
	 *  查询所有的订单
	 * @return
	 * @throws SQLException
	 */
	List<Order> findAll()  throws SQLException;

	/**
	 * 根据id查找
	 * @param id
	 * @return
	 */
	Order finById(Long id) throws SQLException;

	/**
	 * 查询最大的订单号
	 * @return
	 * @throws SQLException
	 */
	String findMaxKey() throws SQLException;

	/**
	 * 添加订单
	 * @param order
	 * @throws SQLException
	 */
	void save(Order order) throws SQLException;

	/**
	 * 修改订单状态码
	 * @param orderNum
	 * @param statusCode
	 */
	void updateOrderStatu(Long orderNum, Integer statusCode) throws SQLException;
	
	void updateEndTime(Long orderNum, String endTime) throws SQLException;

}
