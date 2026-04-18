.class public final Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;
.super Landroid/widget/FrameLayout;
.source "CommonInputPopItemView.kt"


# instance fields
.field private binding:Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;

.field private imageUrl:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;

    move-result-object p1

    const-string v0, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 27
    sget v0, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icn_variable_character:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 28
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;->imageV:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 29
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->text:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_50

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_4c

    const/4 p1, 0x1

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x0

    :goto_4d
    if-ne p1, p2, :cond_50

    goto :goto_51

    :cond_50
    const/4 p2, 0x0

    :goto_51
    if-eqz p2, :cond_63

    .line 30
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;->textV:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;->textV:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;

    move-result-object p1

    const-string p3, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object p3, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 27
    sget p3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icn_variable_character:I

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 28
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object p3, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;

    iget-object p3, p3, Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;->imageV:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 29
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->text:Ljava/lang/String;

    const/4 p3, 0x0

    if-eqz p1, :cond_50

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_4c

    const/4 p1, 0x1

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x0

    :goto_4d
    if-ne p1, p2, :cond_50

    goto :goto_51

    :cond_50
    const/4 p2, 0x0

    :goto_51
    if-eqz p2, :cond_63

    .line 30
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;->textV:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->binding:Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkItemCommonInputTypeBinding;->textV:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_63
    return-void
.end method


# virtual methods
.method public final getImageUrl()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final setImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/toolssdk/view/customize/CommonInputPopItemView;->text:Ljava/lang/String;

    return-void
.end method
