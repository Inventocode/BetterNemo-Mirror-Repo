.class public final synthetic Lcom/codemao/team/download/DownloadApiStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/codemao/team/download/DownloadApiStore;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/team/download/DownloadApiStore;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/team/download/DownloadApiStore$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/team/download/DownloadApiStore;

    iput-object p2, p0, Lcom/codemao/team/download/DownloadApiStore$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/codemao/team/download/DownloadApiStore$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/team/download/DownloadApiStore;

    iget-object v1, p0, Lcom/codemao/team/download/DownloadApiStore$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-static {v0, v1, p1}, Lcom/codemao/team/download/DownloadApiStore;->$r8$lambda$qeEq-l0CC7Kgv89sD8H80bqPNqE(Lcom/codemao/team/download/DownloadApiStore;Ljava/lang/String;Lokhttp3/ResponseBody;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
