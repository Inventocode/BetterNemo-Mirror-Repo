.class public final Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;
.super Ljava/lang/Object;
.source "VCSAssistCodeHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;

.field private static mDisposables:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;

    invoke-direct {v0}, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;->INSTANCE:Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMDisposables$p(Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;)Lio/reactivex/disposables/CompositeDisposable;
    .registers 1

    .line 20
    sget-object p0, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$setMDisposables$p(Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;Lio/reactivex/disposables/CompositeDisposable;)V
    .registers 2

    .line 20
    sput-object p1, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method


# virtual methods
.method public final onShareEvent(Ljava/lang/String;Lcom/codemao/creativecenter/vcs/api/AssistApiStore;Ljava/lang/String;I)V
    .registers 6

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "【nemo求助链接】大佬帮帮忙。复制这段文本，打开编程猫Nemo帮我解答，内容为:$&"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&$"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    sget-object p2, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->INSTANCE:Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;

    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->getMShareAdapter()Lcom/codemao/creativecenter/utils/share/IShareAdapter;

    move-result-object p2

    if-eqz p2, :cond_36

    invoke-interface {p2, p1, p4}, Lcom/codemao/creativecenter/utils/share/IShareAdapter;->onShare(Ljava/lang/String;I)V

    :cond_36
    return-void

    .line 33
    :cond_37
    invoke-virtual {p2, p3}, Lcom/codemao/creativecenter/vcs/api/AssistApiStore;->generateAssistCode(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 34
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 35
    new-instance p2, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper$onShareEvent$1;

    invoke-direct {p2, p4}, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper$onShareEvent$1;-><init>(I)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
