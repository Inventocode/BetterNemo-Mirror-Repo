.class public final Lcom/codemao/creativecenter/NewBcmFragment$init$1$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/vm/ScreenSelectVM$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment$init$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment$init$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment$init$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$init$1$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$init$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickScreen()V
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$init$1$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment$init$1;

    iget-object v0, v0, Lcom/codemao/creativecenter/NewBcmFragment$init$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->clickScreen()V

    return-void
.end method
