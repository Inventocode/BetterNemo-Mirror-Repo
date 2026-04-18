.class Lcn/codemao/android/sketch/SketchActivity$12;
.super Ljava/lang/Object;
.source "SketchActivity.java"

# interfaces
.implements Lcn/codemao/android/sketch/listener/DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/SketchActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/SketchActivity;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/SketchActivity;)V
    .registers 2

    .line 1116
    iput-object p1, p0, Lcn/codemao/android/sketch/SketchActivity$12;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sure()V
    .registers 2

    .line 1119
    iget-object v0, p0, Lcn/codemao/android/sketch/SketchActivity$12;->this$0:Lcn/codemao/android/sketch/SketchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
