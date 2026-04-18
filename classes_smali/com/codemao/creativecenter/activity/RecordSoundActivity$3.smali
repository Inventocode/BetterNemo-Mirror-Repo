.class Lcom/codemao/creativecenter/activity/RecordSoundActivity$3;
.super Ljava/lang/Object;
.source "RecordSoundActivity.java"

# interfaces
.implements Lcom/codemao/creativecenter/pop/FullScreenEditPop$InputStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/RecordSoundActivity;->onClick(Landroid/view/View;)V
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

    .line 236
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity$3;->this$0:Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onDoneVariable(Ljava/lang/String;Z)V
    .registers 3

    .line 249
    iget-object p2, p0, Lcom/codemao/creativecenter/activity/RecordSoundActivity$3;->this$0:Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    invoke-static {p2}, Lcom/codemao/creativecenter/activity/RecordSoundActivity;->access$300(Lcom/codemao/creativecenter/activity/RecordSoundActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
