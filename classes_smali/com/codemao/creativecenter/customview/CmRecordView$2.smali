.class Lcom/codemao/creativecenter/customview/CmRecordView$2;
.super Landroid/os/Handler;
.source "CmRecordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/customview/CmRecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CmRecordView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmRecordView;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 149
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1bb

    const-wide/16 v3, 0x64

    const-string v5, "s"

    const/4 v6, 0x2

    if-eq v0, v6, :cond_176

    const/4 v6, 0x5

    if-eq v0, v1, :cond_13a

    const/4 v1, 0x0

    if-eq v0, v6, :cond_e3

    const-wide/16 v3, 0x10

    const/16 v5, 0x9

    const/16 v6, 0xb

    if-eq v0, v5, :cond_a0

    if-eq v0, v6, :cond_22

    goto/16 :goto_229

    .line 255
    :cond_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 256
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1100(Lcom/codemao/creativecenter/customview/CmRecordView;)Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 257
    invoke-static {}, Lcom/codemao/creativecenter/utils/RecordHelper;->get()Lcom/codemao/creativecenter/utils/RecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/RecordHelper;->getVolumes()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_50

    .line 259
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1100(Lcom/codemao/creativecenter/customview/CmRecordView;)Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;->onSoundSize(I)V

    goto :goto_90

    .line 261
    :cond_50
    invoke-static {}, Lcom/codemao/creativecenter/utils/RecordHelper;->get()Lcom/codemao/creativecenter/utils/RecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/RecordHelper;->getVolumes()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-static {}, Lcom/codemao/creativecenter/utils/RecordHelper;->get()Lcom/codemao/creativecenter/utils/RecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/RecordHelper;->getVolumes()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_90

    .line 262
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1100(Lcom/codemao/creativecenter/customview/CmRecordView;)Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativecenter/utils/RecordHelper;->get()Lcom/codemao/creativecenter/utils/RecordHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/RecordHelper;->getVolumes()Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {}, Lcom/codemao/creativecenter/utils/RecordHelper;->get()Lcom/codemao/creativecenter/utils/RecordHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativecenter/utils/RecordHelper;->getVolumes()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/codemao/creativecenter/customview/CmRecordView$CmRecordListener;->onSoundSize(I)V

    .line 266
    :cond_90
    :goto_90
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v6, p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$200(Lcom/codemao/creativecenter/customview/CmRecordView;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_229

    .line 240
    :cond_a0
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1000(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-nez p1, :cond_a9

    return-void

    .line 243
    :cond_a9
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$1000(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    div-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_de

    .line 245
    invoke-static {}, Lcom/codemao/creativecenter/utils/RecordHelper;->get()Lcom/codemao/creativecenter/utils/RecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/RecordHelper;->getVolumes()Landroid/util/SparseArray;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_229

    .line 247
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, v6, p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$200(Lcom/codemao/creativecenter/customview/CmRecordView;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_229

    .line 250
    :cond_de
    invoke-virtual {p0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_229

    .line 229
    :cond_e3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startPlay: play_time = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "CmRecordView"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$300(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v8, p1, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$400(Lcom/codemao/creativecenter/customview/CmRecordView;)Lcom/codemao/creativecenter/customview/CircleProgressView;

    move-result-object v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CircleProgressView;->setProgress(I)V

    if-ltz p1, :cond_229

    .line 236
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v6, p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$200(Lcom/codemao/creativecenter/customview/CmRecordView;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_229

    .line 211
    :cond_13a
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$600(Lcom/codemao/creativecenter/customview/CmRecordView;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_169

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_169

    .line 213
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    iget-boolean v0, p1, Lcom/codemao/creativecenter/customview/CmRecordView;->isBackground:Z

    if-eqz v0, :cond_160

    const/4 v0, 0x6

    .line 214
    invoke-static {p1, v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$702(Lcom/codemao/creativecenter/customview/CmRecordView;I)I

    goto :goto_16f

    .line 216
    :cond_160
    invoke-static {p1, v6}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$702(Lcom/codemao/creativecenter/customview/CmRecordView;I)I

    .line 217
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$800(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    goto :goto_16f

    .line 221
    :cond_169
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$702(Lcom/codemao/creativecenter/customview/CmRecordView;I)I

    .line 223
    :goto_16f
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$900(Lcom/codemao/creativecenter/customview/CmRecordView;)V

    goto/16 :goto_229

    .line 194
    :cond_176
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 195
    div-int/lit8 v0, p1, 0xa

    .line 197
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$300(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$400(Lcom/codemao/creativecenter/customview/CmRecordView;)Lcom/codemao/creativecenter/customview/CircleProgressView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/codemao/creativecenter/customview/CircleProgressView;->setProgress(I)V

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_1ac

    .line 204
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1, v2}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$500(Lcom/codemao/creativecenter/customview/CmRecordView;Z)V

    goto/16 :goto_229

    .line 206
    :cond_1ac
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v6, p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$200(Lcom/codemao/creativecenter/customview/CmRecordView;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_229

    .line 153
    :cond_1bb
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_1e0

    .line 155
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$100(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_219

    .line 158
    :cond_1e0
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$100(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1e9

    return-void

    :cond_1e9
    if-gtz p1, :cond_1f7

    .line 160
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$100(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 163
    :cond_1f7
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$100(Lcom/codemao/creativecenter/customview/CmRecordView;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    const-wide/16 v5, 0x96

    invoke-static {v1, v3, v4, v5, v6}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 166
    new-instance v1, Lcom/codemao/creativecenter/customview/CmRecordView$2$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/customview/CmRecordView$2$1;-><init>(Lcom/codemao/creativecenter/customview/CmRecordView$2;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 188
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 190
    :goto_219
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmRecordView$2;->this$0:Lcom/codemao/creativecenter/customview/CmRecordView;

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/codemao/creativecenter/customview/CmRecordView;->access$200(Lcom/codemao/creativecenter/customview/CmRecordView;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_229
    :goto_229
    return-void
.end method
