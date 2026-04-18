.class public Lcom/tencent/connect/common/UIListenerManager;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/common/UIListenerManager$ApiTask;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/connect/common/UIListenerManager;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/connect/common/UIListenerManager$ApiTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    if-nez v0, :cond_1b

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    :cond_1b
    return-void
.end method

.method private a(ILcom/tencent/tauth/IUiListener;)Lcom/tencent/tauth/IUiListener;
    .registers 5

    const-string v0, "openSDK_LOG.UIListenerManager"

    const/16 v1, 0x2b5d

    if-ne p1, v1, :cond_c

    const-string p1, "登录的接口回调不能重新构建，暂时无法提供，先记录下来这种情况是否存在"

    .line 172
    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_c
    const/16 v1, 0x2b61

    if-ne p1, v1, :cond_16

    const-string p1, "Social Api 的接口回调需要使用param来重新构建，暂时无法提供，先记录下来这种情况是否存在"

    .line 174
    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_16
    const/16 v1, 0x2b62

    if-ne p1, v1, :cond_1f

    const-string p1, "Social Api 的H5接口回调需要使用param来重新构建，暂时无法提供，先记录下来这种情况是否存在"

    .line 176
    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-object p2
.end method

.method public static getInstance()Lcom/tencent/connect/common/UIListenerManager;
    .registers 1

    .line 25
    sget-object v0, Lcom/tencent/connect/common/UIListenerManager;->a:Lcom/tencent/connect/common/UIListenerManager;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Lcom/tencent/connect/common/UIListenerManager;

    invoke-direct {v0}, Lcom/tencent/connect/common/UIListenerManager;-><init>()V

    sput-object v0, Lcom/tencent/connect/common/UIListenerManager;->a:Lcom/tencent/connect/common/UIListenerManager;

    .line 29
    :cond_b
    sget-object v0, Lcom/tencent/connect/common/UIListenerManager;->a:Lcom/tencent/connect/common/UIListenerManager;

    return-object v0
.end method


# virtual methods
.method public getListnerWithAction(Ljava/lang/String;)Lcom/tencent/tauth/IUiListener;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string p1, "openSDK_LOG.UIListenerManager"

    const-string v1, "getListnerWithAction action is null!"

    .line 89
    invoke-static {p1, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 94
    :cond_b
    iget-object v1, p0, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    monitor-enter v1

    .line 95
    :try_start_e
    iget-object v2, p0, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/connect/common/UIListenerManager$ApiTask;

    .line 96
    iget-object v3, p0, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_22

    if-nez v2, :cond_1f

    return-object v0

    .line 101
    :cond_1f
    iget-object p1, v2, Lcom/tencent/connect/common/UIListenerManager$ApiTask;->mListener:Lcom/tencent/tauth/IUiListener;

    return-object p1

    :catchall_22
    move-exception p1

    .line 97
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public getListnerWithRequestCode(I)Lcom/tencent/tauth/IUiListener;
    .registers 4

    .line 77
    invoke-static {p1}, Lcom/tencent/open/utils/k;->a(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getListner action is null! rquestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "openSDK_LOG.UIListenerManager"

    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 84
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/tencent/connect/common/UIListenerManager;->getListnerWithAction(Ljava/lang/String;)Lcom/tencent/tauth/IUiListener;

    move-result-object p1

    return-object p1
.end method

.method public handleDataToListener(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V
    .registers 8

    const-string v0, "openSDK_LOG.UIListenerManager"

    const-string v1, "handleDataToListener"

    .line 112
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_d

    .line 115
    invoke-interface {p2}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    return-void

    :cond_d
    const-string v1, "key_action"

    .line 119
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "action_login"

    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x4

    const-string v4, ""

    if-eqz v2, :cond_86

    const/4 v1, 0x0

    const-string v2, "key_error_code"

    .line 122
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "key_response"

    .line 124
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 127
    :try_start_2f
    invoke-static {p1}, Lcom/tencent/open/utils/m;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 128
    invoke-interface {p2, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_36} :catch_38

    goto/16 :goto_fd

    :catch_38
    move-exception v1

    .line 130
    new-instance v2, Lcom/tencent/tauth/UiError;

    const-string v4, "服务器返回数据格式有误!"

    invoke-direct {v2, v3, v4, p1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string p1, "OpenUi, onActivityResult, json error"

    .line 132
    invoke-static {v0, p1, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_fd

    :cond_4a
    const-string p1, "OpenUi, onActivityResult, onComplete"

    .line 136
    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p2, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    goto/16 :goto_fd

    .line 141
    :cond_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenUi, onActivityResult, onError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_error_msg"

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_error_detail"

    .line 143
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    new-instance v2, Lcom/tencent/tauth/UiError;

    invoke-direct {v2, v1, v0, p1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto/16 :goto_fd

    :cond_86
    const-string v0, "action_share"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    const-string v0, "result"

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "response"

    .line 148
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cancel"

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 151
    invoke-interface {p2}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    goto :goto_fd

    :cond_a6
    const-string v1, "error"

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 153
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/4 v1, -0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "unknown error"

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_fd

    :cond_c9
    const-string v1, "complete"

    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 157
    :try_start_d1
    new-instance v0, Lorg/json/JSONObject;

    if-nez p1, :cond_d8

    const-string v1, "{\"ret\": 0}"

    goto :goto_d9

    :cond_d8
    move-object v1, p1

    :goto_d9
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-interface {p2, v0}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_df
    .catch Lorg/json/JSONException; {:try_start_d1 .. :try_end_df} :catch_e0

    goto :goto_fd

    :catch_e0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    new-instance v0, Lcom/tencent/tauth/UiError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "json error"

    invoke-direct {v0, v3, v1, p1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_fd
    :goto_fd
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z
    .registers 16

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.UIListenerManager"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/tencent/connect/common/UIListenerManager;->getListnerWithRequestCode(I)Lcom/tencent/tauth/IUiListener;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_32

    if-eqz p4, :cond_2c

    .line 189
    invoke-direct {p0, p1, p4}, Lcom/tencent/connect/common/UIListenerManager;->a(ILcom/tencent/tauth/IUiListener;)Lcom/tencent/tauth/IUiListener;

    move-result-object v0

    goto :goto_32

    :cond_2c
    const-string p1, "onActivityResult can\'t find the listener"

    .line 191
    invoke-static {v1, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_32
    :goto_32
    const/4 p1, -0x1

    const/4 p4, 0x1

    if-ne p2, p1, :cond_191

    const/4 p1, -0x6

    if-nez p3, :cond_44

    .line 198
    new-instance p2, Lcom/tencent/tauth/UiError;

    const-string p3, "onActivityResult intent data is null."

    invoke-direct {p2, p1, p3, p3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    return p4

    :cond_44
    const-string p2, "key_action"

    .line 203
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "action_login"

    .line 205
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "服务器返回数据格式有误!"

    const-string v5, "key_response"

    const-string v6, "key_error_detail"

    const-string v7, "key_error_msg"

    const-string v8, "key_error_code"

    const/4 v9, -0x4

    const-string v10, ""

    if-eqz v3, :cond_bc

    .line 206
    invoke-virtual {p3, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_93

    .line 208
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_84

    .line 211
    :try_start_6b
    invoke-static {p1}, Lcom/tencent/open/utils/m;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 212
    invoke-interface {v0, p2}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_72} :catch_74

    goto/16 :goto_194

    :catch_74
    move-exception p2

    .line 214
    new-instance p3, Lcom/tencent/tauth/UiError;

    invoke-direct {p3, v9, v4, p1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p3}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string p1, "OpenUi, onActivityResult, json error"

    .line 216
    invoke-static {v1, p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_194

    :cond_84
    const-string p1, "OpenUi, onActivityResult, onComplete"

    .line 220
    invoke-static {v1, p1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    goto/16 :goto_194

    .line 225
    :cond_93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenUi, onActivityResult, onError = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 227
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 228
    new-instance v1, Lcom/tencent/tauth/UiError;

    invoke-direct {v1, p1, p2, p3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto/16 :goto_194

    :cond_bc
    const-string v3, "action_share"

    .line 230
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_120

    const-string v3, "action_request_avatar"

    .line 231
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_120

    const-string v3, "action_request_dynamic_avatar"

    .line 232
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_120

    const-string v3, "action_request_set_emotion"

    .line 233
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_120

    const-string v3, "guildOpen"

    .line 234
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e5

    goto :goto_120

    .line 251
    :cond_e5
    invoke-virtual {p3, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_10e

    .line 253
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_104

    .line 256
    :try_start_f1
    invoke-static {p1}, Lcom/tencent/open/utils/m;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 257
    invoke-interface {v0, p2}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_f8
    .catch Lorg/json/JSONException; {:try_start_f1 .. :try_end_f8} :catch_fa

    goto/16 :goto_194

    .line 259
    :catch_fa
    new-instance p2, Lcom/tencent/tauth/UiError;

    invoke-direct {p2, v9, v4, p1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto/16 :goto_194

    .line 262
    :cond_104
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    goto/16 :goto_194

    .line 265
    :cond_10e
    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 266
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 267
    new-instance v1, Lcom/tencent/tauth/UiError;

    invoke-direct {v1, p1, p2, p3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto/16 :goto_194

    :cond_120
    :goto_120
    const-string p2, "result"

    .line 235
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "response"

    .line 236
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "cancel"

    .line 238
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    .line 239
    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    goto :goto_194

    :cond_138
    const-string v2, "error"

    .line 240
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15a

    .line 241
    new-instance p2, Lcom/tencent/tauth/UiError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "unknown error"

    invoke-direct {p2, p1, v1, p3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_194

    :cond_15a
    const-string p1, "complete"

    .line 242
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_194

    .line 244
    :try_start_162
    new-instance p1, Lorg/json/JSONObject;

    if-nez p3, :cond_169

    const-string p2, "{\"ret\": 0}"

    goto :goto_16a

    :cond_169
    move-object p2, p3

    :goto_16a
    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_170
    .catch Lorg/json/JSONException; {:try_start_162 .. :try_end_170} :catch_171

    goto :goto_194

    :catch_171
    move-exception p1

    const-string p2, "JSONException"

    .line 246
    invoke-static {v1, p2, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    new-instance p1, Lcom/tencent/tauth/UiError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "json error"

    invoke-direct {p1, v9, p3, p2}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_194

    .line 271
    :cond_191
    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    :cond_194
    :goto_194
    return p4
.end method

.method public setListenerWithRequestcode(ILcom/tencent/tauth/IUiListener;)Ljava/lang/Object;
    .registers 8

    .line 39
    invoke-static {p1}, Lcom/tencent/open/utils/k;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    const-string p2, "openSDK_LOG.UIListenerManager"

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListener action is null! rquestCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 46
    :cond_1e
    iget-object v2, p0, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    monitor-enter v2

    .line 47
    :try_start_21
    iget-object v3, p0, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    new-instance v4, Lcom/tencent/connect/common/UIListenerManager$ApiTask;

    invoke-direct {v4, p0, p1, p2}, Lcom/tencent/connect/common/UIListenerManager$ApiTask;-><init>(Lcom/tencent/connect/common/UIListenerManager;ILcom/tencent/tauth/IUiListener;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/connect/common/UIListenerManager$ApiTask;

    .line 48
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_35

    if-nez p1, :cond_32

    return-object v1

    .line 53
    :cond_32
    iget-object p1, p1, Lcom/tencent/connect/common/UIListenerManager$ApiTask;->mListener:Lcom/tencent/tauth/IUiListener;

    return-object p1

    :catchall_35
    move-exception p1

    .line 48
    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p1
.end method

.method public setListnerWithAction(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Ljava/lang/Object;
    .registers 8

    .line 58
    invoke-static {p1}, Lcom/tencent/open/utils/k;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1f

    const-string p2, "openSDK_LOG.UIListenerManager"

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListnerWithAction fail, action = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 65
    :cond_1f
    iget-object v2, p0, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    monitor-enter v2

    .line 66
    :try_start_22
    iget-object v3, p0, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    new-instance v4, Lcom/tencent/connect/common/UIListenerManager$ApiTask;

    invoke-direct {v4, p0, v0, p2}, Lcom/tencent/connect/common/UIListenerManager$ApiTask;-><init>(Lcom/tencent/connect/common/UIListenerManager;ILcom/tencent/tauth/IUiListener;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/connect/common/UIListenerManager$ApiTask;

    .line 67
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_36

    if-nez p1, :cond_33

    return-object v1

    .line 72
    :cond_33
    iget-object p1, p1, Lcom/tencent/connect/common/UIListenerManager$ApiTask;->mListener:Lcom/tencent/tauth/IUiListener;

    return-object p1

    :catchall_36
    move-exception p1

    .line 67
    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method
