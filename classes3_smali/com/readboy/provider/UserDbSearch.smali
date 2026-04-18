.class public Lcom/readboy/provider/UserDbSearch;
.super Ljava/lang/Object;
.source "UserDbSearch.java"


# static fields
.field private static userInfoDb:Lcom/readboy/provider/UserDbSearch;


# instance fields
.field private mContext:Landroid/content/Context;

.field private showDebugInfo:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Lcom/readboy/provider/UserDbSearch;->showDebugInfo:Z

    .line 48
    iput-object p1, p0, Lcom/readboy/provider/UserDbSearch;->mContext:Landroid/content/Context;

    return-void
.end method

.method private LogD(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 570
    iget-boolean v0, p0, Lcom/readboy/provider/UserDbSearch;->showDebugInfo:Z

    if-eqz v0, :cond_7

    .line 572
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/readboy/provider/UserDbSearch;
    .registers 2

    .line 39
    sget-object v0, Lcom/readboy/provider/UserDbSearch;->userInfoDb:Lcom/readboy/provider/UserDbSearch;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Lcom/readboy/provider/UserDbSearch;

    invoke-direct {v0, p0}, Lcom/readboy/provider/UserDbSearch;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/readboy/provider/UserDbSearch;->userInfoDb:Lcom/readboy/provider/UserDbSearch;

    .line 43
    :cond_b
    sget-object p0, Lcom/readboy/provider/UserDbSearch;->userInfoDb:Lcom/readboy/provider/UserDbSearch;

    return-object p0
.end method

.method private getUserBooksFromDatabase(Lcom/readboy/provider/mhc/info/UserBaseInfo;)Lcom/readboy/provider/mhc/info/UserBaseInfo;
    .registers 14

    const-string v0, "content://com.readboy.personal.personalProvider/mhc_user_books_data"

    .line 328
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 331
    iget-object v0, p0, Lcom/readboy/provider/UserDbSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 333
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_bc

    :cond_1e
    const-string v1, "stage"

    .line 341
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "grade"

    .line 342
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "gradeStr"

    .line 343
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "schoolId"

    .line 344
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "schoolName"

    .line 345
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "provinceId"

    .line 347
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "cityId"

    .line 348
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "districtId"

    .line 349
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "provStr"

    .line 350
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "cityStr"

    .line 351
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "districtStr"

    .line 352
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    if-ltz v1, :cond_68

    .line 355
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->stage:I

    :cond_68
    if-ltz v2, :cond_70

    .line 357
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeInt:I

    :cond_70
    if-ltz v3, :cond_78

    .line 359
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeStr:Ljava/lang/String;

    :cond_78
    if-ltz v4, :cond_80

    .line 361
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->schoolId:I

    :cond_80
    if-ltz v5, :cond_88

    .line 363
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->schoolName:Ljava/lang/String;

    :cond_88
    if-ltz v6, :cond_90

    .line 365
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->provId:I

    :cond_90
    if-ltz v7, :cond_98

    .line 367
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->cityId:I

    :cond_98
    if-ltz v8, :cond_a0

    .line 369
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->districtId:I

    :cond_a0
    if-ltz v9, :cond_a8

    .line 371
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->provStr:Ljava/lang/String;

    :cond_a8
    if-ltz v10, :cond_b0

    .line 373
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->cityStr:Ljava/lang/String;

    :cond_b0
    if-ltz v11, :cond_b8

    .line 375
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/readboy/provider/mhc/info/UserBaseInfo;->districtStr:Ljava/lang/String;

    .line 377
    :cond_b8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_bc
    :goto_bc
    if-eqz v0, :cond_c1

    .line 336
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_c1
    return-object p1
.end method

.method private getUserInfoFromDatabase()Lcom/readboy/provider/mhc/info/UserBaseInfo;
    .registers 28

    move-object/from16 v1, p0

    const-string v0, "----UserInfoDb----"

    const-string v2, "mhc----------getUserInfoF\tromDatabase()"

    .line 218
    invoke-direct {v1, v0, v2}, Lcom/readboy/provider/UserDbSearch;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v4, Lcom/readboy/provider/mhc/info/DbConstants;->USER_INFO_CONTENT_URI:Landroid/net/Uri;

    .line 221
    iget-object v0, v1, Lcom/readboy/provider/UserDbSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1c6

    .line 223
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_1c6

    .line 231
    :cond_23
    new-instance v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;

    invoke-direct {v3}, Lcom/readboy/provider/mhc/info/UserBaseInfo;-><init>()V

    const-string v0, "uid"

    .line 233
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v4, "username"

    .line 234
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "realname"

    .line 235
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "password"

    .line 236
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "accessToken"

    .line 237
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "accessTokenExpire"

    .line 238
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "classToken"

    .line 239
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "photoUri"

    .line 240
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "gender"

    .line 242
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "genderStr"

    .line 243
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "birth_y"

    .line 244
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "birth_m"

    .line 245
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "birth_d"

    .line 246
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v1, "money"

    .line 247
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v1

    const-string v1, "bean"

    .line 248
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "mobile"

    .line 249
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "regdate"

    .line 251
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v15

    const-string v15, "uid_str"

    .line 252
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v14

    const-string v14, "uid_parent"

    .line 253
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move/from16 v21, v13

    const-string v13, "grade_org"

    .line 254
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v22, v12

    const-string v12, "submember_data"

    .line 255
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move/from16 v23, v11

    const-string v11, "third_auth_uid"

    .line 257
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move/from16 v24, v10

    const-string v10, "third_auth_token"

    .line 258
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move/from16 v25, v9

    const-string v9, "third_auth_expire_in"

    .line 259
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v26, v8

    const-string v8, "third_auth_ok_time"

    .line 260
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    if-ltz v11, :cond_dd

    .line 262
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/readboy/provider/mhc/info/UserBaseInfo;->setThirdAuthUid(Ljava/lang/String;)V

    :cond_dd
    if-ltz v10, :cond_e6

    .line 263
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/readboy/provider/mhc/info/UserBaseInfo;->setThirdAuthToken(Ljava/lang/String;)V

    :cond_e6
    if-ltz v9, :cond_ef

    .line 264
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/readboy/provider/mhc/info/UserBaseInfo;->setThirdAuthExpireIn(J)V

    :cond_ef
    if-ltz v8, :cond_f8

    .line 265
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/readboy/provider/mhc/info/UserBaseInfo;->setThirdAuthOkTime(J)V

    :cond_f8
    if-ltz v12, :cond_101

    .line 266
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/readboy/provider/mhc/info/UserBaseInfo;->setSubmemberData(Ljava/lang/String;)V

    :cond_101
    if-ltz v1, :cond_109

    .line 269
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->regdate:J

    :cond_109
    if-ltz v15, :cond_111

    .line 271
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uidStr:Ljava/lang/String;

    :cond_111
    if-ltz v14, :cond_119

    .line 273
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uidParent:Ljava/lang/String;

    :cond_119
    if-ltz v13, :cond_121

    .line 275
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gradeOrg:I

    :cond_121
    if-ltz v0, :cond_129

    .line 277
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uid:I

    :cond_129
    if-ltz v4, :cond_131

    .line 279
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->userName:Ljava/lang/String;

    :cond_131
    if-ltz v5, :cond_139

    .line 281
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->realName:Ljava/lang/String;

    :cond_139
    if-ltz v6, :cond_141

    .line 283
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->passWord:Ljava/lang/String;

    :cond_141
    if-ltz v7, :cond_149

    .line 285
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->token:Ljava/lang/String;

    :cond_149
    if-ltz v26, :cond_158

    move/from16 v0, v26

    .line 288
    :try_start_14d
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->tokenExpire:J
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_153} :catch_154

    goto :goto_158

    :catch_154
    move-exception v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_158
    :goto_158
    if-ltz v25, :cond_162

    move/from16 v1, v25

    .line 293
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->class_token:Ljava/lang/String;

    :cond_162
    if-ltz v24, :cond_16c

    move/from16 v1, v24

    .line 295
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->photoUri:Ljava/lang/String;

    :cond_16c
    if-ltz v23, :cond_176

    move/from16 v1, v23

    .line 299
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->gender:I

    :cond_176
    if-ltz v22, :cond_180

    move/from16 v1, v22

    .line 301
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->genderStr:Ljava/lang/String;

    :cond_180
    if-ltz v21, :cond_18a

    move/from16 v1, v21

    .line 303
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->birthYear:I

    :cond_18a
    if-ltz v20, :cond_194

    move/from16 v1, v20

    .line 305
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->birthMonth:I

    :cond_194
    if-ltz v19, :cond_19e

    move/from16 v1, v19

    .line 307
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->birthDay:I

    :cond_19e
    if-ltz v16, :cond_1a8

    move/from16 v1, v16

    .line 309
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->money:I

    :cond_1a8
    if-ltz v17, :cond_1b2

    move/from16 v1, v17

    .line 311
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->bean:I

    :cond_1b2
    if-ltz v18, :cond_1bc

    move/from16 v1, v18

    .line 313
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/readboy/provider/mhc/info/UserBaseInfo;->mobile:Ljava/lang/String;

    .line 321
    :cond_1bc
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, p0

    .line 323
    invoke-direct {v1, v3}, Lcom/readboy/provider/UserDbSearch;->getUserBooksFromDatabase(Lcom/readboy/provider/mhc/info/UserBaseInfo;)Lcom/readboy/provider/mhc/info/UserBaseInfo;

    move-result-object v0

    return-object v0

    :cond_1c6
    :goto_1c6
    if-eqz v2, :cond_1cb

    .line 226
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1cb
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getUserInfo()Lcom/readboy/provider/mhc/info/UserBaseInfo;
    .registers 2

    .line 75
    invoke-direct {p0}, Lcom/readboy/provider/UserDbSearch;->getUserInfoFromDatabase()Lcom/readboy/provider/mhc/info/UserBaseInfo;

    move-result-object v0

    return-object v0
.end method
