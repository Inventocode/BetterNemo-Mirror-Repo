.class final Lcom/tencent/mm/opensdk/diffdev/a/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/opensdk/diffdev/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public m:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

.field public u:Ljava/lang/String;

.field public v:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b([B)Lcom/tencent/mm/opensdk/diffdev/a/f$a;
    .registers 8

    new-instance v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/diffdev/a/f$a;-><init>()V

    const-string v1, "MicroMsg.SDK.NoopingResult"

    const-string v2, "star parse NoopingResult"

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_90

    array-length v2, p0

    if-nez v2, :cond_13

    goto/16 :goto_90

    :cond_13
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_15
    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, p0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_80

    :try_start_1c
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "wx_errcode"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->v:I

    const-string v5, "nooping uuidStatusCode = %d"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/mm/opensdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->v:I

    const/16 v5, 0x198

    if-eq v4, v5, :cond_65

    const/16 v5, 0x1f4

    if-eq v4, v5, :cond_62

    packed-switch v4, :pswitch_data_98

    sget-object p0, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    :goto_49
    iput-object p0, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->m:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    goto :goto_68

    :pswitch_4c  #0x195
    sget-object v4, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object v4, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->m:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    const-string v4, "wx_code"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->u:Ljava/lang/String;

    goto :goto_68

    :pswitch_59  #0x194
    sget-object p0, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    goto :goto_49

    :pswitch_5c  #0x193
    sget-object p0, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_Cancel:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    goto :goto_49

    :pswitch_5f  #0x192
    sget-object p0, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_Timeout:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    goto :goto_49

    :cond_62
    sget-object p0, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    goto :goto_49

    :cond_65
    sget-object p0, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_67} :catch_69

    goto :goto_49

    :goto_68
    return-object v0

    :catch_69
    move-exception p0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "parse json fail, ex = %s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_78
    invoke-static {v1, p0}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    :goto_7d
    iput-object p0, v0, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->m:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    return-object v0

    :catch_80
    move-exception p0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "parse fail, build String fail, ex = %s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_78

    :cond_90
    :goto_90
    const-string p0, "parse fail, buf is null"

    invoke-static {v1, p0}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NetworkErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    goto :goto_7d

    :pswitch_data_98
    .packed-switch 0x192
        :pswitch_5f  #00000192
        :pswitch_5c  #00000193
        :pswitch_59  #00000194
        :pswitch_4c  #00000195
    .end packed-switch
.end method
