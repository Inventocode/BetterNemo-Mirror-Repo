.class public Lcom/tencent/connect/share/QzoneShare;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# static fields
.field public static final SHARE_TO_QQ_APP_NAME:Ljava/lang/String; = "appName"

.field public static final SHARE_TO_QQ_AUDIO_URL:Ljava/lang/String; = "audio_url"

.field public static final SHARE_TO_QQ_EXT_INT:Ljava/lang/String; = "cflag"

.field public static final SHARE_TO_QQ_EXT_STR:Ljava/lang/String; = "share_qq_ext_str"

.field public static final SHARE_TO_QQ_IMAGE_LOCAL_URL:Ljava/lang/String; = "imageLocalUrl"

.field public static final SHARE_TO_QQ_IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field public static final SHARE_TO_QQ_SITE:Ljava/lang/String; = "site"

.field public static final SHARE_TO_QQ_SUMMARY:Ljava/lang/String; = "summary"

.field public static final SHARE_TO_QQ_TARGET_URL:Ljava/lang/String; = "targetUrl"

.field public static final SHARE_TO_QQ_TITLE:Ljava/lang/String; = "title"

.field public static final SHARE_TO_QZONE_EXTMAP:Ljava/lang/String; = "extMap"

.field public static final SHARE_TO_QZONE_KEY_TYPE:Ljava/lang/String; = "req_type"

.field public static final SHARE_TO_QZONE_TYPE_IMAGE:I = 0x5

.field public static final SHARE_TO_QZONE_TYPE_IMAGE_TEXT:I = 0x1

.field public static final SHARE_TO_QZONE_TYPE_MINI_PROGRAM:I = 0x7

.field public static final SHARE_TO_QZONE_TYPE_NO_TYPE:I


# instance fields
.field private a:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field public mViaShareQzoneType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
    .registers 3

    .line 84
    invoke-direct {p0, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    const-string p1, ""

    .line 76
    iput-object p1, p0, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/tencent/connect/share/QzoneShare;->d:Z

    .line 80
    iput-boolean p1, p0, Lcom/tencent/connect/share/QzoneShare;->e:Z

    .line 81
    iput-boolean p1, p0, Lcom/tencent/connect/share/QzoneShare;->f:Z

    return-void
.end method

.method private b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .registers 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    const-string v4, "openSDK_LOG.QzoneShare"

    const-string v5, "doshareToQzone() --start"

    .line 363
    invoke-static {v4, v5}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "mqqapi://share/to_qzone?src_type=app&version=1&file_type=news"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, "imageUrl"

    .line 366
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "title"

    .line 367
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "summary"

    .line 368
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "targetUrl"

    .line 369
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "audio_url"

    .line 370
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "req_type"

    const/4 v12, 0x1

    .line 371
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "appName"

    .line 372
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "mini_program_appid"

    .line 373
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "mini_program_path"

    .line 374
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "mini_program_type"

    .line 375
    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    const-string v15, "cflag"

    move-object/from16 v17, v14

    const/4 v14, 0x0

    .line 378
    invoke-virtual {v0, v15, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    const-string v14, "share_qq_ext_str"

    .line 379
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v19, ""

    move/from16 v20, v15

    :try_start_68
    const-string v15, "extMap"

    .line 382
    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_b8

    .line 384
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v15
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_74} :catch_bf

    move-object/from16 v21, v14

    .line 385
    :try_start_76
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 386
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_7f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_89} :catch_b2

    move-object/from16 v24, v13

    :try_start_8b
    move-object/from16 v13, v23

    check-cast v13, Ljava/lang/String;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8f} :catch_9d

    move/from16 v23, v11

    .line 387
    :try_start_91
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v14, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move/from16 v11, v23

    move-object/from16 v13, v24

    goto :goto_7f

    :catch_9d
    move-exception v0

    move/from16 v23, v11

    goto :goto_c6

    :cond_a1
    move/from16 v23, v11

    move-object/from16 v24, v13

    .line 389
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_cb

    .line 390
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_af} :catch_b0

    goto :goto_cb

    :catch_b0
    move-exception v0

    goto :goto_c6

    :catch_b2
    move-exception v0

    move/from16 v23, v11

    move-object/from16 v24, v13

    goto :goto_c6

    :cond_b8
    move/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v21, v14

    goto :goto_cb

    :catch_bf
    move-exception v0

    move/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v21, v14

    :goto_c6
    const-string v11, "ShareToQzone()  --error parse extmap"

    .line 394
    invoke-static {v4, v11, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 397
    :cond_cb
    :goto_cb
    iget-object v0, v1, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v11, v1, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v11}, Lcom/tencent/connect/auth/QQToken;->getOpenIdWithCache()Ljava/lang/String;

    move-result-object v11

    .line 400
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "openId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x2

    if-eqz v6, :cond_14b

    .line 402
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_14b

    const/4 v14, 0x0

    .line 404
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 405
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "&image_url="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object v15

    invoke-static {v15, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    invoke-static {v6}, Lcom/tencent/open/utils/m;->h(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_14b

    .line 407
    invoke-static {v0, v2, v6, v3}, Lcom/tencent/open/utils/m;->a(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Ljava/lang/String;

    move-result-object v6

    .line 408
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_14b

    .line 409
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "&image_uri="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    :cond_14b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16d

    .line 424
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&title="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    :cond_16d
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_18f

    .line 428
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&description="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    :cond_18f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1a9

    .line 431
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&share_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    :cond_1a9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1cb

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&url="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    :cond_1cb
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1ed

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&app_name="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    :cond_1ed
    invoke-static {v11}, Lcom/tencent/open/utils/m;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20f

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&open_id="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    :cond_20f
    invoke-static {v10}, Lcom/tencent/open/utils/m;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_231

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&audioUrl="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    :cond_231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&req_type="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_277

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&mini_program_appid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    :cond_277
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29d

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&mini_program_path="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    :cond_29d
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c3

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&mini_program_type="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    :cond_2c3
    invoke-static/range {v21 .. v21}, Lcom/tencent/open/utils/m;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e5

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&share_qq_ext_str="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    :cond_2e5
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_307

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&share_qzone_ext_str="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    :cond_307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&cflag="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/open/utils/m;->j(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doshareToQzone, url: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v6, v1, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    const-string v7, "shareToNativeQQ"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "requireApi"

    invoke-static {v0, v6, v8, v7}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V

    .line 475
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 478
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pkg_name"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    invoke-virtual {v1, v0}, Lcom/tencent/connect/common/BaseApi;->a(Landroid/content/Intent;)Z

    move-result v5

    const-string v6, "4.6.0"

    .line 481
    invoke-static {v2, v6}, Lcom/tencent/open/utils/m;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38b

    if-eqz v5, :cond_385

    .line 483
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v6

    const/16 v7, 0x2b60

    invoke-virtual {v6, v7, v3}, Lcom/tencent/connect/common/UIListenerManager;->setListenerWithRequestcode(ILcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    .line 485
    invoke-virtual {v1, v2, v0, v7}, Lcom/tencent/connect/common/BaseApi;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    :cond_385
    const-string v0, "doShareToQzone() -- QQ Version is < 4.6.0"

    .line 487
    invoke-static {v4, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a9

    :cond_38b
    const-string v6, "doShareToQzone() -- QQ Version is > 4.6.0"

    .line 489
    invoke-static {v4, v6}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v6

    const-string v7, "shareToQzone"

    invoke-virtual {v6, v7, v3}, Lcom/tencent/connect/common/UIListenerManager;->setListnerWithAction(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3a1

    const-string v3, "doShareToQzone() -- do listener onCancel()"

    .line 492
    invoke-static {v4, v3}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a1
    if-eqz v5, :cond_3a9

    const/16 v3, 0x2778

    const/4 v4, 0x0

    .line 497
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/tencent/connect/common/BaseApi;->a(Landroid/app/Activity;ILandroid/content/Intent;Z)V

    :cond_3a9
    :goto_3a9
    const/4 v0, 0x4

    if-eqz v5, :cond_3f5

    .line 502
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v6

    iget-object v2, v1, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v1, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v8

    iget-object v13, v1, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    const-string v9, "ANDROIDQQ.SHARETOQZ.XX"

    const-string v10, "11"

    const-string v11, "3"

    const-string v12, "0"

    const-string v14, "0"

    const-string v15, "1"

    const-string v16, "0"

    invoke-virtual/range {v6 .. v16}, Lcom/tencent/open/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v17

    const/16 v18, 0x0

    iget-object v2, v1, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v21

    .line 507
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x1

    const-string v19, "SHARE_CHECK_SDK"

    const-string v20, "1000"

    const-string v26, ""

    .line 506
    invoke-virtual/range {v17 .. v26}, Lcom/tencent/open/b/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto :goto_43c

    .line 509
    :cond_3f5
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v4}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v4

    iget-object v9, v1, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    const-string v5, "ANDROIDQQ.SHARETOQZ.XX"

    const-string v6, "11"

    const-string v7, "3"

    const-string v8, "1"

    const-string v10, "0"

    const-string v11, "1"

    const-string v12, "0"

    invoke-virtual/range {v2 .. v12}, Lcom/tencent/open/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v13

    const/4 v14, 0x1

    iget-object v2, v1, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    .line 514
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    const-string v22, "hasActivityForIntent fail"

    .line 513
    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    :goto_43c
    const-string v0, "openSDK_LOG"

    const-string v2, "doShareToQzone() --end"

    .line 516
    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public releaseResource()V
    .registers 1

    return-void
.end method

.method public shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    const-string v7, "openSDK_LOG.QzoneShare"

    const-string v4, "shareToQzone() -- start"

    .line 89
    invoke-static {v7, v4}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {v7, v3}, Lcom/tencent/connect/a;->a(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Z

    move-result v4

    if-eqz v4, :cond_16

    return-void

    :cond_16
    const/4 v4, -0x6

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-nez v1, :cond_4e

    .line 95
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "传入参数不可以为空"

    invoke-direct {v1, v4, v2, v6}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "shareToQzone() params is null"

    .line 97
    invoke-static {v7, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v8

    const/4 v9, 0x1

    iget-object v1, v0, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v12

    .line 99
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v10, "SHARE_CHECK_SDK"

    const-string v11, "1000"

    const-string v17, "传入参数不可以为空"

    .line 98
    invoke-virtual/range {v8 .. v17}, Lcom/tencent/open/b/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    :cond_4e
    const-string v8, "title"

    .line 103
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "summary"

    .line 104
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "targetUrl"

    .line 105
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "mini_program_appid"

    .line 106
    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "mini_program_path"

    .line 107
    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "imageUrl"

    .line 109
    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 110
    invoke-static/range {p1 .. p1}, Lcom/tencent/open/utils/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "appName"

    move-object/from16 v19, v15

    if-nez v5, :cond_83

    .line 113
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v21, v6

    goto :goto_a6

    .line 115
    :cond_83
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v21, v6

    const/16 v6, 0x14

    if-le v15, v6, :cond_a6

    .line 116
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a8

    :cond_a6
    :goto_a6
    move-object/from16 v22, v10

    :goto_a8
    const-string v6, "req_type"

    .line 120
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 121
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "shareToQzone() get SHARE_TO_QZONE_KEY_TYPE: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "1"

    const/4 v15, 0x5

    const/4 v1, 0x1

    if-eq v6, v1, :cond_d2

    if-eq v6, v15, :cond_cd

    .line 135
    iput-object v10, v0, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    goto :goto_d4

    :cond_cd
    const-string v10, "2"

    .line 131
    iput-object v10, v0, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    goto :goto_d4

    .line 128
    :cond_d2
    iput-object v10, v0, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    :goto_d4
    const/4 v10, -0x5

    if-eq v6, v1, :cond_182

    if-eq v6, v15, :cond_14b

    const/4 v15, 0x7

    if-eq v6, v15, :cond_12b

    .line 183
    invoke-static {v9}, Lcom/tencent/open/utils/m;->e(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10d

    .line 184
    invoke-static {v11}, Lcom/tencent/open/utils/m;->e(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10d

    if-eqz v4, :cond_f4

    .line 186
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_f4

    const/4 v13, 0x0

    .line 187
    iput-boolean v13, v0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    goto :goto_10f

    .line 189
    :cond_f4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "来自"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "的分享"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 190
    iput-boolean v1, v0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    goto :goto_10f

    .line 194
    :cond_10d
    iput-boolean v1, v0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    :goto_10f
    const/4 v13, 0x0

    .line 196
    iput-boolean v13, v0, Lcom/tencent/connect/share/QzoneShare;->d:Z

    .line 197
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "-->shareToQzone, default needTitle = true, shareType = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iput-boolean v1, v0, Lcom/tencent/connect/share/QzoneShare;->e:Z

    .line 199
    iput-boolean v13, v0, Lcom/tencent/connect/share/QzoneShare;->f:Z

    goto :goto_190

    .line 174
    :cond_12b
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_137

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_143

    .line 175
    :cond_137
    new-instance v13, Lcom/tencent/tauth/UiError;

    const-string v14, "传入参数有误!"

    const-string v15, "appid or path empty."

    invoke-direct {v13, v10, v14, v15}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v13}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_143
    const/4 v13, 0x0

    .line 177
    iput-boolean v13, v0, Lcom/tencent/connect/share/QzoneShare;->e:Z

    .line 178
    iput-boolean v13, v0, Lcom/tencent/connect/share/QzoneShare;->f:Z

    .line 179
    iput-boolean v13, v0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    goto :goto_190

    .line 161
    :cond_14b
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "请选择支持的分享类型"

    const/4 v4, 0x0

    invoke-direct {v1, v10, v2, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "shareToQzone() error--end请选择支持的分享类型"

    .line 163
    invoke-static {v7, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v18

    const/16 v19, 0x1

    iget-object v1, v0, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    .line 166
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v22

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string v20, "SHARE_CHECK_SDK"

    const-string v21, "1000"

    const-string v27, "shareToQzone() 请选择支持的分享类型"

    .line 165
    invoke-virtual/range {v18 .. v27}, Lcom/tencent/open/b/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    :cond_182
    const-string v13, "-->shareToQzone, SHARE_TO_QZONE_TYPE_IMAGE_TEXT needTitle = true"

    .line 154
    invoke-static {v7, v13}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iput-boolean v1, v0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    const/4 v13, 0x0

    .line 156
    iput-boolean v13, v0, Lcom/tencent/connect/share/QzoneShare;->d:Z

    .line 157
    iput-boolean v1, v0, Lcom/tencent/connect/share/QzoneShare;->e:Z

    .line 158
    iput-boolean v13, v0, Lcom/tencent/connect/share/QzoneShare;->f:Z

    .line 205
    :goto_190
    invoke-static {}, Lcom/tencent/open/utils/m;->a()Z

    move-result v13

    const-string v14, "4.5.0"

    if-nez v13, :cond_1d6

    .line 206
    invoke-static {v2, v14}, Lcom/tencent/open/utils/m;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1d6

    .line 207
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "分享图片失败，检测不到SD卡!"

    const/4 v4, -0x6

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v5}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "shareToQzone() sdcard is null--end"

    .line 209
    invoke-static {v7, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v18

    const/16 v19, 0x1

    iget-object v1, v0, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    .line 212
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v22

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string v20, "SHARE_CHECK_SDK"

    const-string v21, "1000"

    const-string v27, "分享图片失败，检测不到SD卡!"

    .line 211
    invoke-virtual/range {v18 .. v27}, Lcom/tencent/open/b/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    .line 218
    :cond_1d6
    iget-boolean v13, v0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    if-eqz v13, :cond_254

    .line 219
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_217

    .line 220
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "targetUrl为必填项，请补充后分享"

    const/4 v4, 0x0

    invoke-direct {v1, v10, v2, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "shareToQzone() targetUrl null error--end"

    .line 222
    invoke-static {v7, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v18

    const/16 v19, 0x1

    iget-object v1, v0, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    .line 224
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v22

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string v20, "SHARE_CHECK_SDK"

    const-string v21, "1000"

    const-string v27, "targetUrl为必填项，请补充后分享"

    .line 223
    invoke-virtual/range {v18 .. v27}, Lcom/tencent/open/b/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    .line 228
    :cond_217
    invoke-static {v12}, Lcom/tencent/open/utils/m;->h(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_254

    .line 229
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "targetUrl有误"

    const/4 v4, 0x0

    invoke-direct {v1, v10, v2, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "shareToQzone() targetUrl error--end"

    .line 231
    invoke-static {v7, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v18

    const/16 v19, 0x1

    iget-object v1, v0, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    .line 233
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v22

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string v20, "SHARE_CHECK_SDK"

    const-string v21, "1000"

    const-string v27, "targetUrl有误"

    .line 232
    invoke-virtual/range {v18 .. v27}, Lcom/tencent/open/b/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    .line 239
    :cond_254
    iget-boolean v10, v0, Lcom/tencent/connect/share/QzoneShare;->d:Z

    const-string v12, ""

    if-eqz v10, :cond_267

    move-object/from16 v1, p2

    const/4 v10, 0x1

    .line 242
    invoke-virtual {v1, v8, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v13, v22

    .line 243
    invoke-virtual {v1, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2db

    :cond_267
    move-object/from16 v1, p2

    move-object/from16 v13, v22

    const/4 v10, 0x1

    .line 245
    iget-boolean v15, v0, Lcom/tencent/connect/share/QzoneShare;->e:Z

    if-eqz v15, :cond_2ae

    invoke-static {v9}, Lcom/tencent/open/utils/m;->e(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2ae

    .line 246
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "title不能为空!"

    const/4 v4, -0x6

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v5}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "shareToQzone() title is null--end"

    .line 248
    invoke-static {v7, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v18

    const/16 v19, 0x1

    iget-object v1, v0, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    .line 250
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v22

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string v20, "SHARE_CHECK_SDK"

    const-string v21, "1000"

    const-string v27, "shareToQzone() title is null"

    .line 249
    invoke-virtual/range {v18 .. v27}, Lcom/tencent/open/b/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    .line 255
    :cond_2ae
    invoke-static {v9}, Lcom/tencent/open/utils/m;->e(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2c5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v10, 0xc8

    if-le v15, v10, :cond_2c5

    const/4 v15, 0x0

    .line 257
    invoke-static {v9, v10, v15, v15}, Lcom/tencent/open/utils/m;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 258
    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c6

    :cond_2c5
    const/4 v15, 0x0

    .line 260
    :goto_2c6
    invoke-static {v11}, Lcom/tencent/open/utils/m;->e(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2db

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x258

    if-le v8, v9, :cond_2db

    .line 262
    invoke-static {v11, v9, v15, v15}, Lcom/tencent/open/utils/m;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 263
    invoke-virtual {v1, v13, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_2db
    :goto_2db
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2e6

    move-object/from16 v8, v21

    .line 268
    invoke-virtual {v1, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e6
    if-eqz v4, :cond_354

    .line 272
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2ef

    goto :goto_354

    :cond_2ef
    const/4 v10, 0x0

    .line 283
    :goto_2f0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v10, v5, :cond_310

    .line 284
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 285
    invoke-static {v5}, Lcom/tencent/open/utils/m;->h(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_30d

    invoke-static {v5}, Lcom/tencent/open/utils/m;->i(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30d

    .line 287
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v10, v10, -0x1

    :cond_30d
    const/4 v5, 0x1

    add-int/2addr v10, v5

    goto :goto_2f0

    .line 291
    :cond_310
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_34e

    .line 292
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "非法的图片地址!"

    const/4 v4, -0x6

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v5}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "shareToQzone() MSG_PARAM_IMAGE_URL_FORMAT_ERROR--end"

    .line 294
    invoke-static {v7, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v18

    const/16 v19, 0x1

    iget-object v1, v0, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    .line 297
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v22

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string v20, "SHARE_CHECK_SDK"

    const-string v21, "1000"

    const-string v27, "shareToQzone() 非法的图片地址!"

    .line 296
    invoke-virtual/range {v18 .. v27}, Lcom/tencent/open/b/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    :cond_34e
    move-object/from16 v5, v19

    .line 301
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_390

    .line 273
    :cond_354
    :goto_354
    iget-boolean v5, v0, Lcom/tencent/connect/share/QzoneShare;->f:Z

    if-eqz v5, :cond_390

    .line 274
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "纯图分享，imageUrl 不能为空"

    const/4 v4, -0x6

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v5}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "shareToQzone() imageUrl is null -- end"

    .line 276
    invoke-static {v7, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v18

    const/16 v19, 0x1

    iget-object v1, v0, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    .line 278
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v22

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string v20, "SHARE_CHECK_SDK"

    const-string v21, "1000"

    const-string v27, "shareToQzone() imageUrl is null"

    .line 277
    invoke-virtual/range {v18 .. v27}, Lcom/tencent/open/b/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    :cond_390
    :goto_390
    const-string v5, "4.6.0"

    .line 304
    invoke-static {v2, v5}, Lcom/tencent/open/utils/m;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3a2

    const-string v4, "shareToQzone() qqver greater than 4.6.0"

    .line 305
    invoke-static {v7, v4}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-direct/range {p0 .. p3}, Lcom/tencent/connect/share/QzoneShare;->b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto/16 :goto_43a

    :cond_3a2
    const-string v8, "4.2.0"

    .line 325
    invoke-static {v2, v8}, Lcom/tencent/open/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_421

    .line 326
    invoke-static {v2, v5}, Lcom/tencent/open/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_421

    const-string v5, "shareToQzone() qqver between 4.2.0 and 4.6.0, will use qqshare"

    .line 327
    invoke-static {v7, v5}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v5, Lcom/tencent/connect/share/QQShare;

    iget-object v8, v0, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-direct {v5, v2, v8}, Lcom/tencent/connect/share/QQShare;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    if-eqz v4, :cond_411

    .line 330
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_411

    const/4 v8, 0x0

    .line 331
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v8, 0x5

    if-ne v6, v8, :cond_40c

    .line 334
    invoke-static {v4}, Lcom/tencent/open/utils/m;->i(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_40c

    .line 335
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "手Q版本过低，纯图分享不支持网路图片"

    const/4 v4, -0x6

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v5}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "shareToQzone()手Q版本过低，纯图分享不支持网路图片"

    .line 337
    invoke-static {v7, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/tencent/open/b/e;->a()Lcom/tencent/open/b/e;

    move-result-object v18

    const/16 v19, 0x1

    iget-object v1, v0, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    .line 340
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v22

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string v20, "SHARE_CHECK_SDK"

    const-string v21, "1000"

    const-string v27, "shareToQzone()手Q版本过低，纯图分享不支持网路图片"

    .line 339
    invoke-virtual/range {v18 .. v27}, Lcom/tencent/open/b/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    :cond_40c
    const-string v6, "imageLocalUrl"

    .line 346
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_411
    invoke-static {v2, v14}, Lcom/tencent/open/utils/m;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_41d

    const-string v4, "cflag"

    const/4 v6, 0x1

    .line 350
    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    :cond_41d
    invoke-virtual {v5, v2, v1, v3}, Lcom/tencent/connect/share/QQShare;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_43a

    :cond_421
    const-string v1, "shareToQzone() qqver below 4.2.0, will show download dialog"

    .line 355
    invoke-static {v7, v1}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v8, Lcom/tencent/open/TDialog;

    invoke-virtual {v0, v12}, Lcom/tencent/connect/common/BaseApi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/tencent/connect/common/BaseApi;->c:Lcom/tencent/connect/auth/QQToken;

    const-string v3, ""

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    :goto_43a
    const-string v1, "shareToQzone() --end"

    .line 358
    invoke-static {v7, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
