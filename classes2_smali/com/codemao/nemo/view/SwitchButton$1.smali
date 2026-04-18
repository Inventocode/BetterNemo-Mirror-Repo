.class Lcom/codemao/nemo/view/SwitchButton$1;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/SwitchButton;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/SwitchButton;)V
    .registers 2

    .line 1044
    iput-object p1, p0, Lcom/codemao/nemo/view/SwitchButton$1;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1047
    iget-object v0, p0, Lcom/codemao/nemo/view/SwitchButton$1;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    invoke-static {v0}, Lcom/codemao/nemo/view/SwitchButton;->access$100(Lcom/codemao/nemo/view/SwitchButton;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1048
    iget-object v0, p0, Lcom/codemao/nemo/view/SwitchButton$1;->this$0:Lcom/codemao/nemo/view/SwitchButton;

    invoke-static {v0}, Lcom/codemao/nemo/view/SwitchButton;->access$200(Lcom/codemao/nemo/view/SwitchButton;)V

    :cond_d
    return-void
.end method
