.class Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;
.super Lcom/codemao/creativecenter/utils/Mp3PlayController;
.source "SelectSoundAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/utils/Mp3PlayController<",
        "Lcom/codemao/creativestore/bean/SoundVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/Mp3PlayController;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl(Lcom/codemao/creativestore/bean/SoundVO;)Ljava/lang/String;
    .registers 6

    .line 138
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 140
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v2}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$000(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getMaterialAudioPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    return-object v2

    .line 145
    :cond_29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "res/raw/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    return-object v0

    .line 147
    :cond_38
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "/record/"

    if-eqz v0, :cond_79

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v3}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$000(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->getRecordPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_78

    return-object p1

    :cond_78
    return-object v1

    .line 155
    :cond_79
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mp3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v3}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$000(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->getRecordPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mp3"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b6

    return-object p1

    :cond_b6
    return-object v1

    .line 164
    :cond_b7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v3}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$000(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->getRecordPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".aac"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e8

    return-object p1

    :cond_e8
    return-object v1
.end method

.method public bridge synthetic getUrl(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 134
    check-cast p1, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;->getUrl(Lcom/codemao/creativestore/bean/SoundVO;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onError(Lcom/codemao/creativestore/bean/SoundVO;)V
    .registers 4

    .line 176
    invoke-super {p0, p1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->stop(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$100(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_10

    return-void

    .line 180
    :cond_10
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$100(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 181
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$200(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$200(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_material_music_play_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .registers 2

    .line 134
    check-cast p1, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;->onError(Lcom/codemao/creativestore/bean/SoundVO;)V

    return-void
.end method

.method public stop(Lcom/codemao/creativestore/bean/SoundVO;)V
    .registers 4

    .line 186
    invoke-super {p0, p1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->stop(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$100(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_10

    return-void

    .line 190
    :cond_10
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$100(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public bridge synthetic stop(Ljava/lang/Object;)V
    .registers 2

    .line 134
    check-cast p1, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$2;->stop(Lcom/codemao/creativestore/bean/SoundVO;)V

    return-void
.end method
