.class Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$1;
.super Ljava/lang/Object;
.source "SelectSoundAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    .line 102
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->stopMusic()V

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    .line 105
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$000(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getRecordPath()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    .line 106
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$000(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getExitSoundName()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    .line 107
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$000(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getExitRecordSoundName()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    .line 108
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$000(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorkUid()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    .line 109
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$000(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorkId()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    .line 110
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$000(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    iget-object v7, p1, Lcom/codemao/creativestore/bean/WorksEvent;->materialsUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    .line 111
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$000(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v8

    const/16 v1, 0x1995

    .line 103
    invoke-static/range {v0 .. v8}, Lcom/codemao/creativecenter/activity/MaterialActivity;->jumpSoundMaterial(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
