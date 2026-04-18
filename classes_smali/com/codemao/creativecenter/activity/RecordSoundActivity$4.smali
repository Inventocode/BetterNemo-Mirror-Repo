.class Lcom/codemao/creativecenter/activity/RecordSoundActivity$4;
.super Ljava/lang/Object;
.source "RecordSoundActivity.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/CreativePermissionNoticeTool$PermissionCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/RecordSoundActivity;->onRequestPermission()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/RecordSoundActivity;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/RecordSoundActivity;)V
    .registers 2

    .line 298
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity$4;->this$0:Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgree()V
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity$4;->this$0:Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->access$100(Lcom/codemao/creativecenter/activity/RecordSoundActivity;)Lcom/codemao/creativecenter/customview/CmRecordView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 307
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity$4;->this$0:Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->access$100(Lcom/codemao/creativecenter/activity/RecordSoundActivity;)Lcom/codemao/creativecenter/customview/CmRecordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->onPermissionPassed()V

    :cond_11
    return-void
.end method

.method public onDenyRequest()V
    .registers 3

    .line 313
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity$4;->this$0:Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_permission_cannot_record:I

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void
.end method

.method public onDenyRequestAndDontShow()V
    .registers 1

    return-void
.end method
