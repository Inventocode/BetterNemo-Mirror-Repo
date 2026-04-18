.class public Landroidx/databinding/DataBindingUtil;
.super Ljava/lang/Object;
.source "DataBindingUtil.java"


# static fields
.field private static sDefaultComponent:Landroidx/databinding/DataBindingComponent;

.field private static sMapper:Landroidx/databinding/DataBinderMapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroidx/databinding/DataBinderMapperImpl;

    invoke-direct {v0}, Landroidx/databinding/DataBinderMapperImpl;-><init>()V

    sput-object v0, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapper;

    const/4 v0, 0x0

    .line 33
    sput-object v0, Landroidx/databinding/DataBindingUtil;->sDefaultComponent:Landroidx/databinding/DataBindingComponent;

    return-void
.end method

.method public static bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 152
    sget-object v0, Landroidx/databinding/DataBindingUtil;->sDefaultComponent:Landroidx/databinding/DataBindingComponent;

    invoke-static {p0, v0}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/View;",
            "Landroidx/databinding/DataBindingComponent;",
            ")TT;"
        }
    .end annotation

    .line 174
    invoke-static {p0}, Landroidx/databinding/DataBindingUtil;->getBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 178
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 179
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 182
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 183
    sget-object v2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapper;

    invoke-virtual {v2, v1}, Landroidx/databinding/DataBinderMapper;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_21

    .line 187
    sget-object v0, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapper;

    invoke-virtual {v0, p1, p0, v1}, Landroidx/databinding/DataBinderMapper;->getDataBinder(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0

    .line 185
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View is not a binding layout. Tag: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "View is not a binding layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroidx/databinding/DataBindingComponent;",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 199
    sget-object v0, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapper;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/databinding/DataBinderMapper;->getDataBinder(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method static bind(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroidx/databinding/DataBindingComponent;",
            "[",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 194
    sget-object v0, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapper;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/databinding/DataBinderMapper;->getDataBinder(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method private static bindToAddedViews(Landroidx/databinding/DataBindingComponent;Landroid/view/ViewGroup;II)Landroidx/databinding/ViewDataBinding;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroidx/databinding/DataBindingComponent;",
            "Landroid/view/ViewGroup;",
            "II)TT;"
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int v1, v0, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    sub-int/2addr v0, v2

    .line 326
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 327
    invoke-static {p0, p1, p3}, Landroidx/databinding/DataBindingUtil;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0

    .line 329
    :cond_13
    new-array v0, v1, [Landroid/view/View;

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_23

    add-int v3, v2, p2

    .line 331
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 333
    :cond_23
    invoke-static {p0, v0, p3}, Landroidx/databinding/DataBindingUtil;->bind(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static getBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 266
    invoke-static {p0}, Landroidx/databinding/ViewDataBinding;->getBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultComponent()Landroidx/databinding/DataBindingComponent;
    .registers 1

    .line 65
    sget-object v0, Landroidx/databinding/DataBindingUtil;->sDefaultComponent:Landroidx/databinding/DataBindingComponent;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z)TT;"
        }
    .end annotation

    .line 95
    sget-object v0, Landroidx/databinding/DataBindingUtil;->sDefaultComponent:Landroidx/databinding/DataBindingComponent;

    invoke-static {p0, p1, p2, p3, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z",
            "Landroidx/databinding/DataBindingComponent;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_e

    .line 125
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 126
    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz v1, :cond_19

    .line 128
    invoke-static {p4, p2, v0, p1}, Landroidx/databinding/DataBindingUtil;->bindToAddedViews(Landroidx/databinding/DataBindingComponent;Landroid/view/ViewGroup;II)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0

    .line 130
    :cond_19
    invoke-static {p4, p0, p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .line 284
    sget-object v0, Landroidx/databinding/DataBindingUtil;->sDefaultComponent:Landroidx/databinding/DataBindingComponent;

    invoke-static {p0, p1, v0}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;ILandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static setContentView(Landroid/app/Activity;ILandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/app/Activity;",
            "I",
            "Landroidx/databinding/DataBindingComponent;",
            ")TT;"
        }
    .end annotation

    .line 303
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 304
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    .line 305
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 306
    invoke-static {p2, p0, v0, p1}, Landroidx/databinding/DataBindingUtil;->bindToAddedViews(Landroidx/databinding/DataBindingComponent;Landroid/view/ViewGroup;II)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method
