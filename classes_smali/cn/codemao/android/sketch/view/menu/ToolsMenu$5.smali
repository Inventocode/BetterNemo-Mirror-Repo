.class Lcn/codemao/android/sketch/view/menu/ToolsMenu$5;
.super Ljava/lang/Object;
.source "ToolsMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/menu/ToolsMenu;->refreshToolMask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$5;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 229
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$5;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$1000(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$5;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {v1}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$000(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$5;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {v1}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$900(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    goto :goto_1d

    :cond_1b
    const/16 v1, 0x8

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$5;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$1200(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$5;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {v1}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$100(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)I

    move-result v1

    iget-object v4, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$5;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {v4}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$1100(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_43

    iget-object v1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$5;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {v1}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$900(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_45

    :cond_43
    const/16 v2, 0x8

    :goto_45
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
