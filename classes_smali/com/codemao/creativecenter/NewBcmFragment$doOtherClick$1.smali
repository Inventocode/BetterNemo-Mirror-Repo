.class final Lcom/codemao/creativecenter/NewBcmFragment$doOtherClick$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->doOtherClick()V
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

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$doOtherClick$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2558
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$doOtherClick$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$setOtherClicking$p(Lcom/codemao/creativecenter/NewBcmFragment;Z)V

    return-void
.end method
