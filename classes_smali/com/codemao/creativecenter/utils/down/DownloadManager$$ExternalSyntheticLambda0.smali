.class public final synthetic Lcom/codemao/creativecenter/utils/down/DownloadManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativecenter/utils/down/DownloadFile;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativecenter/utils/down/DownloadFile;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/down/DownloadManager$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/creativecenter/utils/down/DownloadFile;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/DownloadManager$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/creativecenter/utils/down/DownloadFile;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/down/DownloadManager;->$r8$lambda$KkG5l4-drpvZM_sOrp29aF0Ygw0(Lcom/codemao/creativecenter/utils/down/DownloadFile;Ljava/lang/Integer;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
