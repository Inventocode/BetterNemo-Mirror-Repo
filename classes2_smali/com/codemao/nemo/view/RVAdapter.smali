.class public Lcom/codemao/nemo/view/RVAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;,
        Lcom/codemao/nemo/view/RVAdapter$MyHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/nemo/view/RVAdapter$MyHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CardVO;",
            ">;"
        }
    .end annotation
.end field

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private i:I

.field private onCardClickListener:Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

.field private screenHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CardVO;",
            ">;",
            "Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, -0x9

    .line 33
    iput v0, p0, Lcom/codemao/nemo/view/RVAdapter;->i:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/RVAdapter;->datas:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lcom/codemao/nemo/view/RVAdapter;->context:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcom/codemao/nemo/view/RVAdapter;->onCardClickListener:Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    .line 45
    iput-object p2, p0, Lcom/codemao/nemo/view/RVAdapter;->datas:Ljava/util/List;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080325

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/RVAdapter;->drawable:Landroid/graphics/drawable/Drawable;

    .line 47
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    iget-object p3, p0, Lcom/codemao/nemo/view/RVAdapter;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/RVAdapter;)Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/codemao/nemo/view/RVAdapter;->onCardClickListener:Lcom/codemao/nemo/view/RVAdapter$OnCardClickListener;

    return-object p0
.end method

.method private encodeBase64File(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 244
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    :goto_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 248
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 250
    :cond_23
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 251
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/codemao/nemo/view/RVAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 284
    iget v0, p0, Lcom/codemao/nemo/view/RVAdapter;->i:I

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
    check-cast p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/view/RVAdapter;->onBindViewHolder(Lcom/codemao/nemo/view/RVAdapter$MyHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/nemo/view/RVAdapter$MyHolder;I)V
    .registers 16

    .line 63
    iget-object v0, p0, Lcom/codemao/nemo/view/RVAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/CardVO;

    .line 64
    iget-object v1, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    const v2, 0x7f0a050c

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v0, :cond_16

    return-void

    .line 68
    :cond_16
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rlLeft:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/codemao/nemo/view/RVAdapter;->screenHeight:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rlLeft:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/codemao/nemo/view/RVAdapter;->screenHeight:I

    int-to-double v6, v4

    const-wide v8, 0x3fda9fbe76c8b439L  # 0.416

    mul-double v6, v6, v8

    double-to-int v4, v6

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rlRight:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/codemao/nemo/view/RVAdapter;->screenHeight:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 71
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rlRight:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/codemao/nemo/view/RVAdapter;->screenHeight:I

    int-to-double v6, v4

    const-wide v10, 0x3fde147ae147ae14L  # 0.47

    mul-double v6, v6, v10

    double-to-int v4, v6

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 72
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rlUpload:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/codemao/nemo/view/RVAdapter;->screenHeight:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 73
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rlUpload:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/codemao/nemo/view/RVAdapter;->screenHeight:I

    int-to-double v6, v4

    mul-double v6, v6, v8

    double-to-int v4, v6

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 74
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rlDownload:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/codemao/nemo/view/RVAdapter;->screenHeight:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 75
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rlDownload:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/codemao/nemo/view/RVAdapter;->screenHeight:I

    int-to-double v6, v4

    mul-double v6, v6, v8

    double-to-int v4, v6

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 76
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/codemao/nemo/view/RVAdapter;->screenHeight:I

    int-to-double v6, v4

    const-wide v10, 0x3fec5a1cac083127L  # 0.886

    mul-double v6, v6, v10

    double-to-int v4, v6

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 77
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/codemao/nemo/view/RVAdapter;->screenHeight:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/codemao/nemo/view/RVAdapter;->screenHeight:I

    int-to-double v6, v4

    mul-double v6, v6, v8

    double-to-int v4, v6

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 80
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rlLeft:Landroid/view/View;

    new-instance v4, Lcom/codemao/nemo/view/RVAdapter$1;

    invoke-direct {v4, p0, p2, v0}, Lcom/codemao/nemo/view/RVAdapter$1;-><init>(Lcom/codemao/nemo/view/RVAdapter;ILcom/codemao/nemo/bean/CardVO;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rlUpload:Landroid/view/View;

    new-instance v4, Lcom/codemao/nemo/view/RVAdapter$2;

    invoke-direct {v4, p0, p2, v0}, Lcom/codemao/nemo/view/RVAdapter$2;-><init>(Lcom/codemao/nemo/view/RVAdapter;ILcom/codemao/nemo/bean/CardVO;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->rlDownload:Landroid/view/View;

    new-instance v4, Lcom/codemao/nemo/view/RVAdapter$3;

    invoke-direct {v4, p0, p2, v0}, Lcom/codemao/nemo/view/RVAdapter$3;-><init>(Lcom/codemao/nemo/view/RVAdapter;ILcom/codemao/nemo/bean/CardVO;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    new-instance v4, Lcom/codemao/nemo/view/RVAdapter$4;

    invoke-direct {v4, p0, v0, p2}, Lcom/codemao/nemo/view/RVAdapter$4;-><init>(Lcom/codemao/nemo/view/RVAdapter;Lcom/codemao/nemo/bean/CardVO;I)V

    invoke-virtual {v3, v4}, Lcom/codemao/nemo/view/MyExpandCardView;->setCallBack(Lcom/codemao/nemo/view/MyExpandCardView$CallBack;)V

    .line 157
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CardVO;->getType()I

    move-result v3

    const v4, 0x7f0a05f5

    const v6, 0x7f0a0716

    const v7, 0x7f0a0936

    const v8, 0x7f0a07a5

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-ne v3, v9, :cond_14c

    .line 158
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {v3, v7}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {v3, v4}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v3, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {v3, v8}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 161
    invoke-virtual {v1, v12, v12, v12, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v1, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {v1, v6}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_130

    .line 164
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    const-string v1, "#ff5acaff"

    invoke-virtual {p2, v1}, Lcom/codemao/nemo/view/MyExpandCardView;->setLeftTextBackColor(Ljava/lang/String;)V

    goto/16 :goto_1a4

    :cond_130
    if-ne p2, v9, :cond_13a

    .line 166
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    const-string v1, "#ff9ee595"

    invoke-virtual {p2, v1}, Lcom/codemao/nemo/view/MyExpandCardView;->setLeftTextBackColor(Ljava/lang/String;)V

    goto :goto_1a4

    :cond_13a
    if-ne p2, v5, :cond_144

    .line 168
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    const-string v1, "#ff9c8de5"

    invoke-virtual {p2, v1}, Lcom/codemao/nemo/view/MyExpandCardView;->setLeftTextBackColor(Ljava/lang/String;)V

    goto :goto_1a4

    .line 170
    :cond_144
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    const-string v1, "#ffff9b2c"

    invoke-virtual {p2, v1}, Lcom/codemao/nemo/view/MyExpandCardView;->setLeftTextBackColor(Ljava/lang/String;)V

    goto :goto_1a4

    .line 173
    :cond_14c
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    const v3, 0x7f0a0833

    const-string v5, "确定删除本作品吗?"

    invoke-virtual {p2, v3, v5}, Lcom/codemao/nemo/view/MyExpandCardView;->setText(ILjava/lang/String;)V

    .line 174
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {p2, v6}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    const-string v5, "#7f333D48"

    invoke-virtual {p2, v5}, Lcom/codemao/nemo/view/MyExpandCardView;->setLeftTextBackColor(Ljava/lang/String;)V

    .line 176
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {p2, v4}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object p2, p0, Lcom/codemao/nemo/view/RVAdapter;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v12, v12, p2, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {p2, v8}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 179
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CardVO;->isHasUploaded()Z

    move-result p2

    if-eqz p2, :cond_194

    .line 180
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    const-string v1, "确定删除本作品吗？"

    invoke-virtual {p2, v3, v1}, Lcom/codemao/nemo/view/MyExpandCardView;->setText(ILjava/lang/String;)V

    .line 181
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {p2, v7}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a4

    .line 183
    :cond_194
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    const-string v1, "本作品未上传云端备份，确定要彻底删除吗？"

    invoke-virtual {p2, v3, v1}, Lcom/codemao/nemo/view/MyExpandCardView;->setText(ILjava/lang/String;)V

    .line 184
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {p2, v7}, Lcom/codemao/nemo/view/MyExpandCardView;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :goto_1a4
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CardVO;->getDownloadStatus()Ljava/lang/String;

    move-result-object p2

    const-string v1, "downloading"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b6

    .line 189
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {p2, v9}, Lcom/codemao/nemo/view/MyExpandCardView;->showDownloadView(Z)V

    goto :goto_1cd

    .line 190
    :cond_1b6
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CardVO;->getDownloadStatus()Ljava/lang/String;

    move-result-object p2

    const-string v1, "fail"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c8

    .line 191
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {p2, v11}, Lcom/codemao/nemo/view/MyExpandCardView;->showDownloadView(Z)V

    goto :goto_1cd

    .line 193
    :cond_1c8
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {p2}, Lcom/codemao/nemo/view/MyExpandCardView;->hideDownloadView()V

    .line 195
    :goto_1cd
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CardVO;->getUploadStatus()Ljava/lang/String;

    move-result-object p2

    const-string v1, "uploading"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1df

    .line 196
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {p2}, Lcom/codemao/nemo/view/MyExpandCardView;->showUploadView()V

    goto :goto_1e4

    .line 198
    :cond_1df
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {p2}, Lcom/codemao/nemo/view/MyExpandCardView;->hideUploadView()V

    .line 202
    :goto_1e4
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {p2}, Lcom/codemao/nemo/view/MyExpandCardView;->revokeView()V

    .line 204
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    const v1, 0x7f0a0508

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CardVO;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/codemao/nemo/view/MyExpandCardView;->setEllipsizeText(ILjava/lang/String;)V

    .line 205
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CardVO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/codemao/nemo/view/MyExpandCardView;->setEllipsizeText(ILjava/lang/String;)V

    .line 206
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CardVO;->getMtime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v8, v1}, Lcom/codemao/nemo/view/MyExpandCardView;->setText(ILjava/lang/String;)V

    .line 207
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    const v1, 0x7f0a00b9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CardVO;->getBlockCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/codemao/nemo/view/MyExpandCardView;->setText(ILjava/lang/String;)V

    .line 208
    iget-object p2, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    const v1, 0x7f0a066f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CardVO;->getEntityCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/codemao/nemo/view/MyExpandCardView;->setText(ILjava/lang/String;)V

    .line 210
    :try_start_23f
    iget-object p2, p0, Lcom/codemao/nemo/view/RVAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    .line 211
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CardVO;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/RVAdapter;->encodeBase64File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v0, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->ivCover:Landroid/widget/ImageView;

    .line 212
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_256
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_256} :catch_257

    goto :goto_25f

    .line 224
    :catch_257
    iget-object p1, p1, Lcom/codemao/nemo/view/RVAdapter$MyHolder;->ivCover:Landroid/widget/ImageView;

    const p2, 0x7f0803f4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_25f
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/view/RVAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/nemo/view/RVAdapter$MyHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/nemo/view/RVAdapter$MyHolder;
    .registers 5

    .line 57
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d01eb

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    new-instance p2, Lcom/codemao/nemo/view/RVAdapter$MyHolder;

    invoke-direct {p2, p0, p1}, Lcom/codemao/nemo/view/RVAdapter$MyHolder;-><init>(Lcom/codemao/nemo/view/RVAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setI(IZ)V
    .registers 4

    .line 299
    iget v0, p0, Lcom/codemao/nemo/view/RVAdapter;->i:I

    .line 300
    iput p1, p0, Lcom/codemao/nemo/view/RVAdapter;->i:I

    if-eqz p2, :cond_d

    .line 302
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 303
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_10

    .line 305
    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_10
    return-void
.end method

.method public setScreenSize(II)V
    .registers 3

    .line 51
    iput p2, p0, Lcom/codemao/nemo/view/RVAdapter;->screenHeight:I

    return-void
.end method
