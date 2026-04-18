.class public Lcom/codemao/team/download/DownloadApiStore;
.super Ljava/lang/Object;
.source "DownloadApiStore.java"


# instance fields
.field private mDisposables:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method public static synthetic $r8$lambda$qeEq-l0CC7Kgv89sD8H80bqPNqE(Lcom/codemao/team/download/DownloadApiStore;Ljava/lang/String;Lokhttp3/ResponseBody;)Lio/reactivex/ObservableSource;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/team/download/DownloadApiStore;->lambda$downloadWithoutSubs$0(Ljava/lang/String;Lokhttp3/ResponseBody;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iget-object v0, p0, Lcom/codemao/team/download/DownloadApiStore;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    if-nez v0, :cond_e

    .line 41
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/codemao/team/download/DownloadApiStore;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    :cond_e
    return-void
.end method

.method private synthetic lambda$downloadWithoutSubs$0(Ljava/lang/String;Lokhttp3/ResponseBody;)Lio/reactivex/ObservableSource;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    new-instance v0, Lcom/codemao/team/download/DownloadApiStore$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/codemao/team/download/DownloadApiStore$4;-><init>(Lcom/codemao/team/download/DownloadApiStore;Lokhttp3/ResponseBody;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public downloadWithoutSubs(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 175
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/team/download/DownloadApiService;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/team/download/DownloadApiService;

    .line 176
    invoke-interface {v0, p1}, Lcom/codemao/team/download/DownloadApiService;->downLoad(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/codemao/team/download/DownloadApiStore$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/codemao/team/download/DownloadApiStore$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/team/download/DownloadApiStore;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
