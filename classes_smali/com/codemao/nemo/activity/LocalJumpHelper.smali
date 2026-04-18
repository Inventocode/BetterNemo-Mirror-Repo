.class public Lcom/codemao/nemo/activity/LocalJumpHelper;
.super Ljava/lang/Object;
.source "LocalJumpHelper.java"


# direct methods
.method public static jump(Landroid/net/Uri;Landroid/content/Context;ZZ)V
    .registers 13

    .line 21
    const-class p3, Lcom/codemao/nemo/MainActivityV2;

    const-class v0, Lcom/codemao/nemo/activity/UserDetailActivity;

    const-string v1, "type"

    if-eqz p0, :cond_155

    .line 24
    :try_start_8
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_13

    :catch_11
    const/16 v2, -0x270f

    :goto_13
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const-string v6, "userId"

    const-string v7, "url"

    const/4 v8, 0x0

    packed-switch v2, :pswitch_data_156

    :pswitch_1e  #0xa
    goto/16 :goto_148

    .line 130
    :pswitch_20  #0x10
    sget-boolean p3, Lcom/codemao/nemo/util/AppConstants;->IS_SHOW_ACTIVITY_MIAO_CODE:Z

    if-eqz p3, :cond_25

    return-void

    :cond_25
    :try_start_25
    const-string p3, "template_id"

    .line 136
    invoke-virtual {p0, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const-string v0, "miaocode"

    .line 137
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_35} :catch_3f

    .line 141
    new-instance v0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-direct {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;-><init>()V

    invoke-virtual {v0, p1, p0, p3, p0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->showMiaoCode(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_148

    :catch_3f
    return-void

    .line 127
    :pswitch_40  #0xf
    invoke-static {p1}, Lcom/codemao/nemo/util/BcmHelper;->create(Landroid/content/Context;)V

    goto/16 :goto_148

    :pswitch_45  #0xe
    :try_start_45
    const-string p3, "subjectid"

    .line 119
    invoke-virtual {p0, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    const/4 p0, -0x1

    .line 123
    :goto_51
    new-instance v8, Landroid/content/Intent;

    const-class p3, Lcom/codemao/nemo/activity/ThemeDetailActivity;

    invoke-direct {v8, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "subjectId"

    .line 124
    invoke-virtual {v8, p3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_148

    .line 72
    :pswitch_5f  #0xd
    new-instance v8, Landroid/content/Intent;

    const-class p3, Lcom/codemao/nemo/activity/BoxPlayerActivity;

    invoke-direct {v8, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    invoke-virtual {p0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-virtual {v8, v7, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_148

    :pswitch_6f  #0xc
    :try_start_6f
    const-string p3, "commentid"

    .line 109
    invoke-virtual {p0, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_79} :catch_79

    .line 113
    :catch_79
    new-instance v8, Landroid/content/Intent;

    const-class p0, Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {v8, p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "commentId"

    .line 114
    invoke-virtual {v8, p0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_148

    .line 98
    :pswitch_87  #0xb
    new-instance p0, Landroid/content/Intent;

    const-class p3, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-direct {p0, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p3

    if-eqz p3, :cond_148

    .line 100
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v4

    invoke-virtual {p0, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_128

    .line 92
    :pswitch_a4  #0x9
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    const/4 p3, 0x1

    const-string/jumbo v0, "草稿箱(0)"

    invoke-static {p3, v0}, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->obtain(ILjava/lang/String;)Lcom/codemao/nemo/event/MainActivityTabChangeEvent;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_148

    .line 89
    :pswitch_ba  #0x8
    new-instance v8, Landroid/content/Intent;

    const-class p0, Lcom/codemao/nemo/activity/TemplateCreateActivity;

    invoke-direct {v8, p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_148

    :pswitch_c3  #0x7
    :try_start_c3
    const-string p2, "lessonid"

    .line 81
    invoke-virtual {p0, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "courseid"

    .line 82
    invoke-virtual {p0, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/codemao/nemo/activity/CoursePlayerActivity;->start(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_da} :catch_da

    :catch_da
    return-void

    .line 77
    :pswitch_db  #0x6
    new-instance v8, Landroid/content/Intent;

    const-class p0, Lcom/codemao/nemo/activity/CourseActivity;

    invoke-direct {v8, p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_148

    .line 68
    :pswitch_e3  #0x5
    invoke-virtual {p0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 69
    invoke-static {p1, p0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goLocalWeb(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 64
    :pswitch_eb  #0x4
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    const-string/jumbo p3, "推荐"

    invoke-static {v3, p3}, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->obtain(ILjava/lang/String;)Lcom/codemao/nemo/event/MainActivityTabChangeEvent;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_148

    :pswitch_ff  #0x3
    :try_start_ff
    const-string p3, "userid"

    .line 56
    invoke-virtual {p0, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_109
    .catch Ljava/lang/NumberFormatException; {:try_start_ff .. :try_end_109} :catch_109

    .line 60
    :catch_109
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    invoke-virtual {v8, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_148

    .line 46
    :pswitch_112  #0x2
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p3

    if-eqz p3, :cond_148

    .line 48
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_128
    move-object v8, p0

    goto :goto_148

    :pswitch_12a  #0x1, 0x11, 0x12
    :try_start_12a
    const-string p3, "workid"

    .line 35
    invoke-virtual {p0, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_134
    .catch Ljava/lang/NumberFormatException; {:try_start_12a .. :try_end_134} :catch_134

    .line 41
    :catch_134
    new-instance v8, Landroid/content/Intent;

    const-class p0, Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {v8, p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "workId"

    .line 42
    invoke-virtual {v8, p0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "from"

    const-string/jumbo p3, "分享落地页"

    .line 43
    invoke-virtual {v8, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_148
    :goto_148
    if-nez v8, :cond_14b

    return-void

    :cond_14b
    if-eqz p2, :cond_152

    const/high16 p0, 0x10000000

    .line 151
    invoke-virtual {v8, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    :cond_152
    invoke-virtual {p1, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_155
    return-void

    :pswitch_data_156
    .packed-switch 0x1
        :pswitch_12a  #00000001
        :pswitch_112  #00000002
        :pswitch_ff  #00000003
        :pswitch_eb  #00000004
        :pswitch_e3  #00000005
        :pswitch_db  #00000006
        :pswitch_c3  #00000007
        :pswitch_ba  #00000008
        :pswitch_a4  #00000009
        :pswitch_1e  #0000000a
        :pswitch_87  #0000000b
        :pswitch_6f  #0000000c
        :pswitch_5f  #0000000d
        :pswitch_45  #0000000e
        :pswitch_40  #0000000f
        :pswitch_20  #00000010
        :pswitch_12a  #00000011
        :pswitch_12a  #00000012
    .end packed-switch
.end method
