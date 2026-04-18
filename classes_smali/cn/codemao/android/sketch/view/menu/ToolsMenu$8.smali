.class Lcn/codemao/android/sketch/view/menu/ToolsMenu$8;
.super Ljava/lang/Object;
.source "ToolsMenu.java"

# interfaces
.implements Lcn/codemao/android/sketch/view/dialog/QuiteEditDialog$OnDissMissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/menu/ToolsMenu;->onClick(Landroid/view/View;)V
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

    .line 482
    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$8;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .registers 4

    if-nez p1, :cond_13

    .line 486
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$8;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$2100(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Lcn/codemao/android/sketch/view/paint/FigurePaint;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "图形不再提醒"

    invoke-interface {p1, v1, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    :cond_13
    return-void
.end method

.method public onConfirm(Z)V
    .registers 4

    if-nez p1, :cond_13

    .line 493
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$8;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$2100(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)Lcn/codemao/android/sketch/view/paint/FigurePaint;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "图形不再提醒"

    invoke-interface {p1, v1, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 495
    :cond_13
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ToolsMenu$8;->this$0:Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->access$2200(Lcn/codemao/android/sketch/view/menu/ToolsMenu;)V

    return-void
.end method
