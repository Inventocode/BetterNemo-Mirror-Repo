.class Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$1;
.super Ljava/lang/Object;
.source "SelectSoundAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->bindData(Lcom/codemao/creativestore/bean/SoundVO;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

.field final synthetic val$bean:Lcom/codemao/creativestore/bean/SoundVO;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;Lcom/codemao/creativestore/bean/SoundVO;)V
    .registers 3

    .line 225
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$1;->val$bean:Lcom/codemao/creativestore/bean/SoundVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    .line 228
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$000(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$1;->val$bean:Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getExitSoundName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_25
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$600(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v1, v1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$000(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getRecordPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/record/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$1;->val$bean:Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mid"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 236
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$200(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Landroid/content/Context;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$1;->val$bean:Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getMidiMode()I

    move-result v6

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$1;->val$bean:Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/codemao/midi/CMMidiHelper;->startEditorMidi(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
