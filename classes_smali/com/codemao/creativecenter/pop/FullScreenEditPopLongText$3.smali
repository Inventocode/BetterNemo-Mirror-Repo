.class Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;
.super Ljava/lang/Object;
.source "FullScreenEditPopLongText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$000(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 181
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$000(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 182
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$200(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_83

    .line 183
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$000(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {v3}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$200(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    const/high16 v3, 0x40000000  # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/16 v3, 0xbb8

    const/high16 v4, -0x80000000

    .line 185
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 186
    iget-object v4, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {v4}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$000(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/widget/EditText;->measure(II)V

    .line 187
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$000(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    if-le v0, v1, :cond_65

    .line 189
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$000(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_70

    .line 191
    :cond_65
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$000(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 193
    :goto_70
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$000(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {v1}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$200(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 195
    :cond_83
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_8e

    goto :goto_ac

    .line 197
    :cond_8e
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$000(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/codemao/creativecenter/customview/CmEditText;->setHasFiter(Z)V

    .line 198
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$000(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_enter_block_note:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_ac
    return-void
.end method
