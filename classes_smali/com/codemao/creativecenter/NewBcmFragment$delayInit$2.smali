.class final Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->delayInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 639
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    new-instance v1, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2$1;-><init>(Lcom/codemao/creativecenter/NewBcmFragment$delayInit$2;)V

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$initCreateUtils(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativestore/listener/BaseCloudDownloadListener;)V

    return-void
.end method
