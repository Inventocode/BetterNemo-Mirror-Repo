.class Lcn/codemao/android/sketch/activity/ICutActivity$2;
.super Ljava/lang/Object;
.source "ICutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/activity/ICutActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/activity/ICutActivity;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/activity/ICutActivity;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcn/codemao/android/sketch/activity/ICutActivity$2;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 126
    invoke-static {}, Lcn/codemao/android/sketch/utils/ReportUtils;->getInstance()Lcn/codemao/android/sketch/utils/ReportUtils;

    move-result-object p1

    const-string/jumbo v0, "角色抠图页面"

    const-string/jumbo v1, "角色抠图-帮助"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcn/codemao/android/sketch/utils/ReportUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 127
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/ICutActivity$2;->this$0:Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-static {p1}, Lcn/codemao/android/sketch/activity/ICutActivity;->access$000(Lcn/codemao/android/sketch/activity/ICutActivity;)V

    return-void
.end method
