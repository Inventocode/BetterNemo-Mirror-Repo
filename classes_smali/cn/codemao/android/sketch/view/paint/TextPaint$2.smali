.class Lcn/codemao/android/sketch/view/paint/TextPaint$2;
.super Ljava/lang/Object;
.source "TextPaint.java"

# interfaces
.implements Lcn/codemao/android/sketch/view/dialog/FullScreenEditDialog2$ListenTextAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/paint/TextPaint;->whenChangeMyMode(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/paint/TextPaint;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/paint/TextPaint;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/TextPaint$2;->this$0:Lcn/codemao/android/sketch/view/paint/TextPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onText(Ljava/lang/String;)V
    .registers 3

    .line 280
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/TextPaint$2;->this$0:Lcn/codemao/android/sketch/view/paint/TextPaint;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/paint/TextPaint;->addText(Ljava/lang/String;)V

    return-void
.end method
