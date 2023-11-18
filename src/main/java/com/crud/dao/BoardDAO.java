package com.crud.dao;

import com.crud.bean.BoardVO;
import com.crud.common.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    private final String BOARD_INSERT = "insert into word (id,word,meaning,date,address,address2,email,password,school,level)values(?,?,?,?,?,?,?,?,?,?)";
    private final String BOARD_UPDATE = "update word set id =?,word=?,meaning=?,date=? ,address=?,address2=?,email=?,password=?,school=?, level =?where seq =?";

    private final String BOARD_DELETE = "delete from word where seq =?";

    private final String BOARD_GET = "select * from word where seq =?";
    private final String BOARD_LIST = "select * from word order by seq desc";


    public int insertBoard(BoardVO vo){
        System.out.println("===> JDBC로 insertBoard()기능 최적");
        try{
            conn= JDBCUtil.getConnection();
            stmt= conn.prepareStatement(BOARD_INSERT);

            stmt.setString(1,vo.getId());
            stmt.setString(2,vo.getWord());
            stmt.setString(3,vo.getMeaning());
            stmt.setString(4,vo.getDate());
            stmt.setString(5,vo.getAddress());
            stmt.setString(6,vo.getAddress2());
            stmt.setString(7,vo.getEmail());
            stmt.setString(8,vo.getPassword());
            stmt.setString(9,vo.getSchool());
            stmt.setString(10,vo.getLevel());
            stmt.executeUpdate();
            return 1;
        }catch (Exception e){
            e.printStackTrace();
        }
        return 0;
    }

    public void deleteBoard(BoardVO vo){
        System.out.println("===> JDBC로 deleteBoard()기능 최적");
        try{
            conn= JDBCUtil.getConnection();
            stmt= conn.prepareStatement(BOARD_DELETE);
            stmt.setInt(1,vo.getSeq());
            stmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }

    }

    public int updateBoard(BoardVO vo){
        System.out.println("===> JDBC로 updateBoard()기능 최적");
        try{
            conn= JDBCUtil.getConnection();
            stmt= conn.prepareStatement(BOARD_UPDATE);
            stmt.setString(1,vo.getId());
            stmt.setString(2,vo.getWord());
            stmt.setString(3,vo.getMeaning());
            stmt.setString(4,vo.getDate());
            stmt.setString(5,vo.getAddress());
            stmt.setString(6,vo.getAddress2());
            stmt.setString(7,vo.getEmail());
            stmt.setString(8,vo.getPassword());
            stmt.setString(9,vo.getSchool());
            stmt.setString(10,vo.getLevel());
            stmt.setInt(11,vo.getSeq());

            System.out.println(vo.getWord()+"-"+
                    vo.getId()+"-"+vo.getDate()+"-"+
                    vo.getLevel()+"-"+
                    vo.getAddress()+"-"+
                    vo.getAddress2()+"-"+
                    vo.getEmail()+"-"+vo.getPassword()+
                    "-"+vo.getSchool()+"-"+vo.getMeaning()+"-"+
                    vo.getSeq()
            );
            stmt.executeUpdate();
            return 1;

        }catch (Exception e){
            e.printStackTrace();
        }
        return 0;
    }

    public BoardVO getBoard(int seq){
        BoardVO one = new BoardVO();
        System.out.println("===>JDBC로 getBoard() 기능 처리");
        try{
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_GET);
            stmt.setInt(1, seq);
            rs = stmt.executeQuery();
           if(rs.next()){
                one.setSeq(rs.getInt("seq"));
                one.setEmail(rs.getString("email"));
                one.setPassword(rs.getString("password"));
                one.setId (rs.getString("id"));
                one.setSchool(rs.getString("school"));
                one.setMeaning(rs.getString("meaning"));
                one.setDate(rs.getString("date"));
                one.setWord(rs.getString("word"));
                one.setLevel (rs.getString("level"));
                one.setAddress(rs.getString("address"));
                one.setAddress2(rs.getString("address2"));
            }
            rs.close();
        }catch (Exception e){
            e.printStackTrace();

        }
        return one;
    }


    public List<BoardVO> getBoardList(){
        List<BoardVO> list = new ArrayList<BoardVO>();
        System.out.println("===>JDBC로 getBoardList() 기능 처리");
        try{
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_LIST);
            rs= stmt.executeQuery();
            while (rs.next()){
                BoardVO one = new BoardVO();
                one.setSeq(rs.getInt("seq"));
                one.setEmail(rs.getString("email"));
                one.setPassword(rs.getString("password"));
                one.setId (rs.getString("id"));
                one.setSchool(rs.getString("school"));
                one.setMeaning(rs.getString("meaning"));
                one.setDate(rs.getString("date"));
                one.setWord(rs.getString("word"));
                one.setLevel (rs.getString("level"));
                one.setAddress(rs.getString("address"));
                one.setAddress2(rs.getString("address2"));
                list.add(one);
            }
            rs.close();
        }catch (Exception e){
            e.printStackTrace();

        }
        return list;
    }
}
