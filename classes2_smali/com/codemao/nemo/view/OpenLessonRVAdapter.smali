.class public Lcom/codemao/nemo/view/OpenLessonRVAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OpenLessonRVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;,
        Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseVO;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private onLessonClickListener:Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;

.field private padding:I

.field private screenHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseVO;",
            ">;",
            "Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, -0x9

    .line 33
    iput v0, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->i:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->datas:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->context:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->onLessonClickListener:Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;

    .line 44
    iput-object p2, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->datas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/OpenLessonRVAdapter;)Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->onLessonClickListener:Lcom/codemao/nemo/view/OpenLessonRVAdapter$OnLessonClickListener;

    return-object p0
.end method

.method private getResourceByName(Ljava/lang/String;)I
    .registers 3

    const-string v0, "course_1.png"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const p1, 0x7f080140

    return p1

    :cond_c
    const-string v0, "course_2.png"

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const p1, 0x7f080141

    return p1

    :cond_18
    const-string v0, "course_3.png"

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    const p1, 0x7f080142

    return p1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 162
    iget v0, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->i:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 30
    check-cast p1, Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->onBindViewHolder(Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;I)V
    .registers 11

    .line 62
    iget-object v0, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/CourseVO;

    if-nez v0, :cond_b

    return-void

    .line 66
    :cond_b
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->screenHeight:I

    int-to-double v2, v2

    const-wide v4, 0x3fdbf7ced916872bL  # 0.437

    mul-double v2, v2, v4

    iget v4, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->padding:I

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->screenHeight:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x3

    div-int/2addr v2, v3

    iget v4, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->padding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    iget-object v1, p1, Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;->tagNew:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->screenHeight:I

    int-to-double v4, v2

    const-wide v6, 0x3fc89374bc6a7efaL  # 0.192

    mul-double v4, v4, v6

    double-to-int v2, v4

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 69
    iget-object v1, p1, Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;->tagNew:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->screenHeight:I

    int-to-double v4, v2

    mul-double v4, v4, v6

    double-to-int v2, v4

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    iget-object v1, p1, Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 71
    iget v2, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->screenHeight:I

    int-to-double v4, v2

    const-wide v6, 0x3f85b573eab367a1L  # 0.0106

    mul-double v4, v4, v6

    double-to-int v2, v4

    .line 72
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 73
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/codemao/nemo/view/OpenLessonRVAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/codemao/nemo/view/OpenLessonRVAdapter$1;-><init>(Lcom/codemao/nemo/view/OpenLessonRVAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :try_start_78
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseVO;->getType()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ADVANCED_COURSE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const v1, 0x7f0805e2

    if-eqz p2, :cond_bf

    .line 85
    iget-object p2, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 86
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseVO;->getPreview_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    new-instance v2, Lcom/codemao/nemo/view/RoundTransform;

    invoke-direct {v2, v3}, Lcom/codemao/nemo/view/RoundTransform;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v1, p1, Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;->ivCover:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_103

    .line 91
    :cond_bf
    iget-object p2, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 92
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseVO;->getPreview_url()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->getResourceByName(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    new-instance v2, Lcom/codemao/nemo/view/RoundTransform;

    invoke-direct {v2, v3}, Lcom/codemao/nemo/view/RoundTransform;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v1, p1, Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;->ivCover:Landroid/widget/ImageView;

    .line 93
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_fe} :catch_ff

    goto :goto_103

    :catch_ff
    move-exception p2

    .line 96
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :goto_103
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseVO;->isIs_played()Z

    move-result p2

    if-eqz p2, :cond_111

    .line 99
    iget-object p1, p1, Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;->tagNew:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_117

    .line 101
    :cond_111
    iget-object p1, p1, Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;->tagNew:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_117
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;
    .registers 5

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d01de

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    new-instance p2, Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;

    invoke-direct {p2, p0, p1}, Lcom/codemao/nemo/view/OpenLessonRVAdapter$MyHolder;-><init>(Lcom/codemao/nemo/view/OpenLessonRVAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setScreenSize(II)V
    .registers 5

    .line 49
    iput p2, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->screenHeight:I

    int-to-double p1, p2

    const-wide v0, 0x3fa47ae147ae147bL  # 0.04

    mul-double p1, p1, v0

    double-to-int p1, p1

    .line 50
    iput p1, p0, Lcom/codemao/nemo/view/OpenLessonRVAdapter;->padding:I

    return-void
.end method
