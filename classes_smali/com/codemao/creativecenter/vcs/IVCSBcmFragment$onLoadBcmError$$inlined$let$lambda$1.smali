.class final Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$onLoadBcmError$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "IVCSBcmFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->onLoadBcmError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$onLoadBcmError$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 133
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$onLoadBcmError$$inlined$let$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->finish()V

    return-void
.end method
