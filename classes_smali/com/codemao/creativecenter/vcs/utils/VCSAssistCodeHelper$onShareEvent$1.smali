.class public final Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper$onShareEvent$1;
.super Ljava/lang/Object;
.source "VCSAssistCodeHelper.kt"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;->onShareEvent(Ljava/lang/String;Lcom/codemao/creativecenter/vcs/api/AssistApiStore;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lretrofit2/Response<",
        "Lcom/codemao/creativecenter/vcs/bean/AssistCodeBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $type:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper$onShareEvent$1;->$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string v1, "CreativeCenterUtils.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    goto :goto_1c

    :cond_19
    const-string/jumbo p1, "分享失败"

    .line 46
    :goto_1c
    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 35
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper$onShareEvent$1;->onNext(Lretrofit2/Response;)V

    return-void
.end method

.method public onNext(Lretrofit2/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/codemao/creativecenter/vcs/bean/AssistCodeBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_58

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1a
    check-cast v0, Lcom/codemao/creativecenter/vcs/bean/AssistCodeBean;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vcs/bean/AssistCodeBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "【nemo求助链接】大佬帮帮忙。复制这段文本，打开编程猫Nemo帮我解答，内容为:$&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_39

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_39
    check-cast p1, Lcom/codemao/creativecenter/vcs/bean/AssistCodeBean;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/bean/AssistCodeBean;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&$"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    sget-object v0, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->INSTANCE:Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->getMShareAdapter()Lcom/codemao/creativecenter/utils/share/IShareAdapter;

    move-result-object v0

    if-eqz v0, :cond_58

    iget v1, p0, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper$onShareEvent$1;->$type:I

    invoke-interface {v0, p1, v1}, Lcom/codemao/creativecenter/utils/share/IShareAdapter;->onShare(Ljava/lang/String;I)V

    :cond_58
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object p1, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;->INSTANCE:Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;->access$getMDisposables$p(Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    if-nez v0, :cond_15

    .line 54
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;->access$setMDisposables$p(Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;Lio/reactivex/disposables/CompositeDisposable;)V

    :cond_15
    return-void
.end method
