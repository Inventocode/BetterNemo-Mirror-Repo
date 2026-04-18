.class Lcom/codemao/creativecenter/customview/CreativeSwitchButton$1;
.super Ljava/lang/Object;
.source "CreativeSwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/customview/CreativeSwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)V
    .registers 2

    .line 1044
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$1;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1047
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$1;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$100(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1048
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$1;->this$0:Lcom/codemao/creativecenter/customview/CreativeSwitchButton;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton;->access$200(Lcom/codemao/creativecenter/customview/CreativeSwitchButton;)V

    :cond_d
    return-void
.end method
