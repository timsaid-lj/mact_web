/**
 * 
 */
package com.thinkgem.javamg.modules.mact.entity;

import org.hibernate.validator.constraints.Length;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

import com.thinkgem.javamg.common.persistence.DataEntity;

/**
 * mact用户Entity
 * @author lj
 * @version 2019-05-12
 */
public class MactUser extends DataEntity<MactUser> {
	
	private static final long serialVersionUID = 1L;
	private String userName;		// 姓名
	private String userSex;		// 性别
	private Date birthday;		// 出生日期
	private String education;		// 学历
	private String loginTime;		// 登录时间
	private String recordTime;		// 录音时间
	private String fileName;		// 文件名
	private String filePath;		// 录音文件地址
	private String status;		// 状态（1有效、0无效）
	private Date beginBirthday;		// 开始 出生日期
	private Date endBirthday;		// 结束 出生日期
	private Date beginLoginTime;		// 开始 登录时间
	private Date endLoginTime;		// 结束 登录时间
	private Date beginRecordTime;		// 开始 录音时间
	private Date endRecordTime;		// 结束 录音时间
	
	public MactUser() {
		super();
	}

	public MactUser(String id){
		super(id);
	}

	@Length(min=0, max=255, message="姓名长度必须介于 0 和 255 之间")
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	@Length(min=0, max=1, message="性别长度必须介于 0 和 1 之间")
	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	
	@Length(min=0, max=2, message="学历长度必须介于 0 和 2 之间")
	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public String getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(String loginTime){
		SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			this.loginTime = sdf.format(sdf.parse(loginTime));
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public String getRecordTime() {
		return recordTime;
	}

	public void setRecordTime(String recordTime) {
		SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			this.recordTime = sdf.format(sdf.parse(recordTime));
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	
	@Length(min=0, max=255, message="文件名长度必须介于 0 和 255 之间")
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	@Length(min=0, max=255, message="录音文件地址长度必须介于 0 和 255 之间")
	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	
	@Length(min=0, max=1, message="状态（1有效、0无效）长度必须介于 0 和 1 之间")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public Date getBeginBirthday() {
		return beginBirthday;
	}

	public void setBeginBirthday(Date beginBirthday) {
		this.beginBirthday = beginBirthday;
	}
	
	public Date getEndBirthday() {
		return endBirthday;
	}

	public void setEndBirthday(Date endBirthday) {
		this.endBirthday = endBirthday;
	}
		
	public Date getBeginLoginTime() {
		return beginLoginTime;
	}

	public void setBeginLoginTime(Date beginLoginTime) {
		this.beginLoginTime = beginLoginTime;
	}
	
	public Date getEndLoginTime() {
		return endLoginTime;
	}

	public void setEndLoginTime(Date endLoginTime) {
		this.endLoginTime = endLoginTime;
	}
		
	public Date getBeginRecordTime() {
		return beginRecordTime;
	}

	public void setBeginRecordTime(Date beginRecordTime) {
		this.beginRecordTime = beginRecordTime;
	}
	
	public Date getEndRecordTime() {
		return endRecordTime;
	}

	public void setEndRecordTime(Date endRecordTime) {
		this.endRecordTime = endRecordTime;
	}
		
}