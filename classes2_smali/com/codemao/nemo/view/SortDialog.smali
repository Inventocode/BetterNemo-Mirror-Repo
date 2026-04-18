.class public Lcom/codemao/nemo/view/SortDialog;
.super Landroid/app/Dialog;
.source "SortDialog.java"


# instance fields
.field adapter:Lcom/codemao/nemo/adapter/SortDialogAdapter;

.field datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TypeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private gravity:I

.field listView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llDialog:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private orderChooseListener:Lcom/codemao/nemo/listener/OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TypeItemData;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f13034f

    .line 55
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/codemao/nemo/view/SortDialog;->gravity:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/SortDialog;->datas:Ljava/util/List;

    .line 57
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    iput-object p1, p0, Lcom/codemao/nemo/view/SortDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method private calculatePopWindowPos(Landroid/view/View;)[I
    .registers 14

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    const/high16 v3, 0x42280000  # 42.0f

    .line 127
    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    iget-object v4, p0, Lcom/codemao/nemo/view/SortDialog;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int v3, v3, v4

    const/high16 v4, 0x41800000  # 16.0f

    .line 128
    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    const/high16 v5, 0x41000000  # 8.0f

    .line 129
    invoke-static {v5}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v5

    .line 131
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenHeight()I

    move-result v6

    .line 132
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v7

    const/4 v8, 0x1

    .line 134
    aget v9, v0, v8

    sub-int/2addr v6, v9

    sub-int/2addr v6, v2

    const/4 v9, 0x0

    if-ge v6, v3, :cond_3c

    const/4 v6, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v6, 0x0

    .line 136
    :goto_3d
    iget v10, p0, Lcom/codemao/nemo/view/SortDialog;->gravity:I

    const/16 v11, 0x33

    if-ne v10, v11, :cond_4d

    .line 137
    aget p1, v0, v9

    if-nez p1, :cond_48

    goto :goto_4a

    :cond_48
    aget v4, v0, v9

    :goto_4a
    aput v4, v1, v9

    goto :goto_5a

    :cond_4d
    const/16 v4, 0x35

    if-ne v10, v4, :cond_58

    .line 139
    aget v4, v0, v9

    add-int/2addr v4, p1

    sub-int/2addr v7, v4

    aput v7, v1, v9

    goto :goto_5a

    :cond_58
    aput v9, v1, v9

    :goto_5a
    if-eqz v6, :cond_64

    .line 145
    aget p1, v0, v8

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    sub-int/2addr p1, v5

    aput p1, v1, v8

    goto :goto_6e

    .line 147
    :cond_64
    aget p1, v0, v8

    add-int/2addr p1, v2

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v0

    sub-int/2addr p1, v0

    aput p1, v1, v8

    :goto_6e
    return-object v1
.end method

.method private init()V
    .registers 6

    .line 88
    iget-object v0, p0, Lcom/codemao/nemo/view/SortDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02f4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 90
    new-instance v1, Lcom/codemao/nemo/adapter/SortDialogAdapter;

    iget-object v2, p0, Lcom/codemao/nemo/view/SortDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/codemao/nemo/view/SortDialog;->datas:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/adapter/SortDialogAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/codemao/nemo/view/SortDialog;->adapter:Lcom/codemao/nemo/adapter/SortDialogAdapter;

    .line 91
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 92
    iget v2, p0, Lcom/codemao/nemo/view/SortDialog;->gravity:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_34

    .line 93
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, p0, Lcom/codemao/nemo/view/SortDialog;->gravity:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    goto :goto_3d

    .line 95
    :cond_34
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 98
    :goto_3d
    iget-object v2, p0, Lcom/codemao/nemo/view/SortDialog;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, -0x2

    if-le v2, v3, :cond_52

    .line 99
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v2, 0x43580000  # 216.0f

    .line 100
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_56

    .line 102
    :cond_52
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 103
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 105
    :goto_56
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 106
    iget-object v0, p0, Lcom/codemao/nemo/view/SortDialog;->listView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/codemao/nemo/view/SortDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/view/SortDialog;->listView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/codemao/nemo/view/SortDialog;->adapter:Lcom/codemao/nemo/adapter/SortDialogAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 113
    iget-object v0, p0, Lcom/codemao/nemo/view/SortDialog;->orderChooseListener:Lcom/codemao/nemo/listener/OnItemClickListener;

    if-eqz v0, :cond_75

    .line 114
    iget-object v1, p0, Lcom/codemao/nemo/view/SortDialog;->adapter:Lcom/codemao/nemo/adapter/SortDialogAdapter;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/adapter/SortDialogAdapter;->setOnItemClickListener(Lcom/codemao/nemo/listener/OnItemClickListener;)V

    :cond_75
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 73
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-direct {p0}, Lcom/codemao/nemo/view/SortDialog;->init()V

    return-void
.end method

.method public setGravity(I)Lcom/codemao/nemo/view/SortDialog;
    .registers 3

    .line 79
    iput p1, p0, Lcom/codemao/nemo/view/SortDialog;->gravity:I

    .line 80
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 81
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setGravity(I)V

    :cond_f
    return-object p0
.end method

.method public setOrderChooseListener(Lcom/codemao/nemo/listener/OnItemClickListener;)Lcom/codemao/nemo/view/SortDialog;
    .registers 3

    .line 63
    iput-object p1, p0, Lcom/codemao/nemo/view/SortDialog;->orderChooseListener:Lcom/codemao/nemo/listener/OnItemClickListener;

    .line 64
    iget-object v0, p0, Lcom/codemao/nemo/view/SortDialog;->listView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/codemao/nemo/view/SortDialog;->adapter:Lcom/codemao/nemo/adapter/SortDialogAdapter;

    if-eqz v0, :cond_d

    .line 65
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/adapter/SortDialogAdapter;->setOnItemClickListener(Lcom/codemao/nemo/listener/OnItemClickListener;)V

    :cond_d
    return-object p0
.end method

.method public showFitPostion(Landroid/view/View;)V
    .registers 4

    .line 153
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 154
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/SortDialog;->calculatePopWindowPos(Landroid/view/View;)[I

    move-result-object p1

    const/4 v1, 0x0

    .line 155
    aget v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v1, 0x1

    .line 156
    aget p1, p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 157
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
