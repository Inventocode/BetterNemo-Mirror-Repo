.class Lcn/codemao/android/sketch/SketchActivity2$1;
.super Ljava/lang/Object;
.source "SketchActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/SketchActivity2;->delayInitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/SketchActivity2;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/SketchActivity2;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 236
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity2;->access$200(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/menu/OperateMenu;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v1}, Lcn/codemao/android/sketch/SketchActivity2;->access$000(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/SketchViewV5;

    move-result-object v1

    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v2}, Lcn/codemao/android/sketch/SketchActivity2;->access$100(Lcn/codemao/android/sketch/SketchActivity2;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->bindSkectroller(Lcn/codemao/android/sketch/view/paint/SketchControll;I)V

    .line 238
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity2;->access$300(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/menu/ColorMenu;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v1}, Lcn/codemao/android/sketch/SketchActivity2;->access$000(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/SketchViewV5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->bindCanvas(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 240
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity2;->access$400(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/menu/ScrawlMenu;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v1}, Lcn/codemao/android/sketch/SketchActivity2;->access$000(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/SketchViewV5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/menu/ScrawlMenu;->bindSkectroller(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 242
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity2;->access$600(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/menu/ToolsMenu;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v1}, Lcn/codemao/android/sketch/SketchActivity2;->access$000(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/SketchViewV5;

    move-result-object v1

    iget-object v2, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v2}, Lcn/codemao/android/sketch/SketchActivity2;->access$100(Lcn/codemao/android/sketch/SketchActivity2;)I

    move-result v2

    iget-object v3, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v3}, Lcn/codemao/android/sketch/SketchActivity2;->access$400(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/menu/ScrawlMenu;

    move-result-object v3

    iget-object v4, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v4}, Lcn/codemao/android/sketch/SketchActivity2;->access$500(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_57

    const/4 v4, 0x1

    goto :goto_58

    :cond_57
    const/4 v4, 0x0

    :goto_58
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/codemao/android/sketch/view/menu/ToolsMenu;->init(Lcn/codemao/android/sketch/view/paint/SketchControll;ILcn/codemao/android/sketch/view/menu/ScrawlMenu;Z)V

    .line 244
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity2;->access$000(Lcn/codemao/android/sketch/SketchActivity2;)Lcn/codemao/android/sketch/view/SketchViewV5;

    move-result-object v7

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity2;->access$100(Lcn/codemao/android/sketch/SketchActivity2;)I

    move-result v8

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity2;->access$700(Lcn/codemao/android/sketch/SketchActivity2;)Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity2;->access$100(Lcn/codemao/android/sketch/SketchActivity2;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7a

    const/4 v9, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v9, 0x0

    :goto_7b
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity2;->access$800(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity2;->access$900(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v0}, Lcn/codemao/android/sketch/SketchActivity2;->access$500(Lcn/codemao/android/sketch/SketchActivity2;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual/range {v7 .. v12}, Lcn/codemao/android/sketch/view/SketchViewV5;->bindType(IZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 246
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/SketchActivity2;->access$802(Lcn/codemao/android/sketch/SketchActivity2;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 247
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity2$1;->this$0:Lcn/codemao/android/sketch/SketchActivity2;

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/SketchActivity2;->access$902(Lcn/codemao/android/sketch/SketchActivity2;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method
