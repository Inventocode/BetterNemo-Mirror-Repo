.class Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$2;
.super Ljava/lang/Object;
.source "ShareBitmapEditActivityPortrait.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$2;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 107
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait$2;->this$0:Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/activity/ShareBitmapEditActivityPortrait;->finish()V

    return-void
.end method
