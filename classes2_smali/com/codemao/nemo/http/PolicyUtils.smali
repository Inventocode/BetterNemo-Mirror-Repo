.class public Lcom/codemao/nemo/http/PolicyUtils;
.super Ljava/lang/Object;
.source "PolicyUtils.java"


# static fields
.field public static currentCachedUserId:J = -0x1L

.field public static isTouristAgreePolicy:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static checkPolicy(Lcom/codemao/nemo/http/LocalNetCallBack;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/http/LocalNetCallBack<",
            "Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 70
    :cond_7
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/UserService;

    const-string v1, "nemo"

    .line 71
    invoke-interface {v0, v1}, Lcom/codemao/nemo/retrofit/api/UserService;->checkPolicy(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 72
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/http/PolicyUtils$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/http/PolicyUtils$2;-><init>(Lcom/codemao/nemo/http/LocalNetCallBack;)V

    .line 73
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static checkPolicyInMain(Lcom/codemao/nemo/http/LocalNetCallBack;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/http/LocalNetCallBack<",
            "Lcom/codemao/nemo/retrofit/response/RespCheckPolicy;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 104
    :cond_7
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/UserService;

    const-string v1, "nemo"

    .line 105
    invoke-interface {v0, v1}, Lcom/codemao/nemo/retrofit/api/UserService;->checkPolicy(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 106
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/http/PolicyUtils$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/http/PolicyUtils$3;-><init>(Lcom/codemao/nemo/http/LocalNetCallBack;)V

    .line 108
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static checkSavedPolicyState()Z
    .registers 4

    .line 43
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/codemao/nemo/http/PolicyUtils;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public static notifyPolicy()V
    .registers 5

    .line 47
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/codemao/nemo/http/PolicyUtils;->isTouristAgreePolicy:Z

    if-eqz v0, :cond_20

    sget-wide v0, Lcom/codemao/nemo/http/PolicyUtils;->currentCachedUserId:J

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_20

    .line 48
    new-instance v0, Lcom/codemao/nemo/http/PolicyUtils$1;

    invoke-direct {v0}, Lcom/codemao/nemo/http/PolicyUtils$1;-><init>()V

    invoke-static {v0}, Lcom/codemao/nemo/http/PolicyUtils;->checkPolicy(Lcom/codemao/nemo/http/LocalNetCallBack;)V

    :cond_20
    return-void
.end method

.method public static obtain()Landroid/content/SharedPreferences;
    .registers 3

    .line 33
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    const-string v1, "sp_policy_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static savePolicyState(Z)V
    .registers 4

    .line 37
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 38
    invoke-static {}, Lcom/codemao/nemo/http/PolicyUtils;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1d
    return-void
.end method

.method public static setPolicy(Lcom/codemao/nemo/http/LocalNetCallBack;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/http/LocalNetCallBack<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 138
    sput-boolean v0, Lcom/codemao/nemo/http/PolicyUtils;->isTouristAgreePolicy:Z

    .line 139
    invoke-static {v0}, Lcom/codemao/nemo/http/PolicyUtils;->savePolicyState(Z)V

    .line 140
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 142
    :cond_d
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/UserService;

    const-string v1, "1"

    const-string v2, "nemo"

    .line 143
    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/retrofit/api/UserService;->setPolicy(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/http/PolicyUtils$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/http/PolicyUtils$4;-><init>(Lcom/codemao/nemo/http/LocalNetCallBack;)V

    .line 145
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
