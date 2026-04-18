.class public Lcom/codemao/creativecenter/utils/down/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/utils/down/DownloadManager$SingleInstance;
    }
.end annotation


# instance fields
.field private mDownloadApiStore:Lcom/codemao/team/download/DownloadApiStore;


# direct methods
.method public static synthetic $r8$lambda$KkG5l4-drpvZM_sOrp29aF0Ygw0(Lcom/codemao/creativecenter/utils/down/DownloadFile;Ljava/lang/Integer;)Lio/reactivex/ObservableSource;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/down/DownloadManager;->lambda$downloadFileWithoutSuc$2(Lcom/codemao/creativecenter/utils/down/DownloadFile;Ljava/lang/Integer;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/creativecenter/utils/down/DownloadManager$1;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/down/DownloadManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/codemao/creativecenter/utils/down/DownloadManager;
    .registers 1

    .line 30
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/DownloadManager$SingleInstance;->access$100()Lcom/codemao/creativecenter/utils/down/DownloadManager;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$downloadFileWithoutSuc$2(Lcom/codemao/creativecenter/utils/down/DownloadFile;Ljava/lang/Integer;)Lio/reactivex/ObservableSource;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/utils/down/DownloadFile;->progress:I

    .line 63
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public downloadFileWithoutSuc(Lcom/codemao/creativecenter/utils/down/DownloadFile;)Lio/reactivex/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativecenter/utils/down/DownloadFile;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/codemao/creativecenter/utils/down/DownloadFile;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/DownloadManager;->mDownloadApiStore:Lcom/codemao/team/download/DownloadApiStore;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/codemao/team/download/DownloadApiStore;

    invoke-direct {v0}, Lcom/codemao/team/download/DownloadApiStore;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/utils/down/DownloadManager;->mDownloadApiStore:Lcom/codemao/team/download/DownloadApiStore;

    .line 60
    :cond_b
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/DownloadManager;->mDownloadApiStore:Lcom/codemao/team/download/DownloadApiStore;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/DownloadFile;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/DownloadFile;->getSavePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/codemao/team/download/DownloadApiStore;->downloadWithoutSubs(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/down/DownloadManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/codemao/creativecenter/utils/down/DownloadManager$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/utils/down/DownloadFile;)V

    .line 61
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
