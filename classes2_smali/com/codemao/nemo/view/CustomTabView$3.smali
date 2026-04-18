.class Lcom/codemao/nemo/view/CustomTabView$3;
.super Ljava/lang/Object;
.source "CustomTabView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/CustomTabView;->setTabs(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/CustomTabView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/CustomTabView;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabView$3;->this$0:Lcom/codemao/nemo/view/CustomTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView$3;->this$0:Lcom/codemao/nemo/view/CustomTabView;

    invoke-static {v0}, Lcom/codemao/nemo/view/CustomTabView;->access$200(Lcom/codemao/nemo/view/CustomTabView;)V

    return-void
.end method
