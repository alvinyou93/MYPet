package com.mypet.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mypet.domain.BoardDTO;
import com.mypet.domain.PageDTO;


@Repository
public class BoardDAOImpl implements BoardDAO{

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.mypet.mappers.freeboardMapper";
//write start
	@Override
	public void write_freeBoard(BoardDTO boardDTO) {
		sqlSession.insert(namespace+".writefreeBoard", boardDTO);
		
	}
	
	@Override
	public void write_noticeBoard(BoardDTO boardDTO) {
		sqlSession.insert(namespace+".writenoticeBoard", boardDTO);
		
	}
	
	@Override
	public void write_reviewBoard(BoardDTO boardDTO) {
		sqlSession.insert(namespace+".writereviewBoard", boardDTO);
		
	}
//write end
	
//MaxNum start	
	@Override
	public Integer getfreeMaxNum() {
		return sqlSession.selectOne(namespace+".getfreeMaxNum");
	}
	@Override
	public Integer getnoticeMaxNum() {
		return sqlSession.selectOne(namespace+".getnoticeMaxNum");
	}
	@Override
	public Integer getreviewMaxNum() {
		return sqlSession.selectOne(namespace+".getreviewMaxNum");
	}
//MaxNum end	

//List start
	@Override
	public List<BoardDTO> getfreeBoardList(PageDTO pageDTO) {
		return sqlSession.selectList(namespace+".getfreeBoardList", pageDTO);
	}
	@Override
	public List<BoardDTO> getnoticeBoardList(PageDTO pageDTO) {
		return sqlSession.selectList(namespace+".getnoticeBoardList", pageDTO);
	}
	@Override
	public List<BoardDTO> getreviewBoardList(PageDTO pageDTO) {
		return sqlSession.selectList(namespace+".getreviewBoardList", pageDTO);
	}
//List end

//BoardCount start	
	@Override
	public int getfreeBoardCount() {
		return sqlSession.selectOne(namespace+".getfreeBoardCount");
	}
	
	@Override
	public int getnoticeBoardCount() {
		return sqlSession.selectOne(namespace+".getnoticeBoardCount");
	}
	
	@Override
	public int getreviewBoardCount() {
		return sqlSession.selectOne(namespace+".getreviewBoardCount");
	}
//BoardCount end
	
//board start	
	@Override
	public BoardDTO getfreeBoard(int num) {
		return sqlSession.selectOne(namespace+".getfreeBoard", num);
	}
	
	@Override
	public BoardDTO getnoticeBoard(int num) {
		return sqlSession.selectOne(namespace+".getnoticeBoard", num);
	}
	
	@Override
	public BoardDTO getreviewBoard(int num) {
		return sqlSession.selectOne(namespace+".getreviewBoard", num);
	}
//board end
	
//readcount start	
	@Override
	public void updatefreeReadcount(int num) {
		sqlSession.update(namespace+".updatefreeReadcount", num);
	}
	
	@Override
	public void updatenoticeReadcount(int num) {
		sqlSession.update(namespace+".updatenoticeReadcount", num);
	}
	
	@Override
	public void updatereviewReadcount(int num) {
		sqlSession.update(namespace+".updatereviewReadcount", num);
	}
//readcount end
	
//update start	
	@Override
	public void updatefreeBoard(BoardDTO boardDTO) {
		sqlSession.update(namespace+".updatefreeBoard", boardDTO);
	}
	
	@Override
	public void updatenoticeBoard(BoardDTO boardDTO) {
		sqlSession.update(namespace+".updatenoticeBoard", boardDTO);
	}
	
	@Override
	public void updatereviewBoard(BoardDTO boardDTO) {
		sqlSession.update(namespace+".updatereviewBoard", boardDTO);
	}
//update end
	
//delete start	
	@Override
	public void deletefreeBoard(int num) {
		sqlSession.delete(namespace+".deletefreeBoard", num);
	}
	
	@Override
	public void deletenoticeBoard(int num) {
		sqlSession.delete(namespace+".deletenoticeBoard", num);
	}
	
	@Override
	public void deletereviewBoard(int num) {
		sqlSession.delete(namespace+".deletereviewBoard", num);
	}
//delete end
	@Override
	public void insert_findboard(BoardDTO boardDTO) {
		sqlSession.insert(namespace+".insert_findboard");
	}
	
	
	
}//
