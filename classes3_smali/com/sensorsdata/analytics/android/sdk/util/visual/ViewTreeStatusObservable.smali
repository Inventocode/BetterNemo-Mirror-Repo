.class public Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;
.super Ljava/lang/Object;
.source "ViewTreeStatusObservable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.ViewTreeStatusObservable"

.field public static volatile viewTreeStatusObservable:Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;


# instance fields
.field private mViewNodesHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;",
            ">;"
        }
    .end annotation
.end field

.field private mViewNodesWithHashCode:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;",
            ">;"
        }
    .end annotation
.end field

.field private mWebViewHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mViewNodesHashMap:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    return-void
.end method

.method private generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 210
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_11
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 213
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCacheViewPathAndPosition(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;
    .registers 12

    .line 276
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    const/4 v0, 0x0

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 283
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1b

    .line 284
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    :cond_1b
    if-nez v0, :cond_23

    .line 287
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->getViewPathAndPosition(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    move-result-object p2

    goto/16 :goto_bf

    .line 289
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    if-nez v3, :cond_48

    .line 293
    invoke-static {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->getViewPathAndPosition(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    move-result-object v3

    .line 294
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_48
    if-eqz v3, :cond_5d

    .line 298
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewOriginalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v3

    goto :goto_5f

    :cond_5d
    const-string v3, ""

    .line 303
    :goto_5f
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 304
    invoke-static {p1, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->getViewNode(Landroid/view/View;IZ)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    move-result-object p2

    if-eqz p2, :cond_97

    .line 306
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_97

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 307
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_97

    add-int/lit8 v4, v0, 0x1

    .line 309
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v4, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_97
    if-eqz p2, :cond_bf

    .line 313
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    .line 318
    :cond_bf
    :goto_bf
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p2
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;
    .registers 2

    .line 50
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->viewTreeStatusObservable:Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;

    if-nez v0, :cond_17

    .line 51
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;

    monitor-enter v0

    .line 52
    :try_start_7
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->viewTreeStatusObservable:Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;

    if-nez v1, :cond_12

    .line 53
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->viewTreeStatusObservable:Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;

    .line 55
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 57
    :cond_17
    :goto_17
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->viewTreeStatusObservable:Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;

    return-object v0
.end method

.method private getSingleViewPathAndPosition(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;
    .registers 12

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 334
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_b

    .line 335
    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_14

    .line 338
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->getViewPathAndPosition(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    move-result-object p1

    goto/16 :goto_99

    .line 340
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    invoke-static {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->getViewPathAndPosition(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 345
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewOriginalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v3

    goto :goto_39

    :cond_37
    const-string v3, ""

    .line 349
    :goto_39
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 350
    invoke-static {p1, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->getViewNode(Landroid/view/View;IZ)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    move-result-object p2

    if-eqz p2, :cond_98

    .line 353
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 354
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_71

    add-int/lit8 v4, v0, 0x1

    .line 356
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v4, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_71
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_99

    :cond_98
    move-object p1, p2

    :goto_99
    return-object p1
.end method

.method private traverseNode()V
    .registers 2

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->traverseNode(Landroid/view/View;)V

    return-void
.end method

.method private traverseNode(Landroid/view/View;)V
    .registers 8

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mViewNodesHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 162
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 163
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 165
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 166
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_24

    .line 169
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->traverseNode(Landroid/view/View;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_34

    .line 172
    :cond_24
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getSortedWindowViews()[Landroid/view/View;

    move-result-object p1

    .line 173
    array-length v3, p1

    const/4 v4, 0x0

    :goto_2a
    if-ge v4, v3, :cond_34

    aget-object v5, p1, v4

    .line 174
    invoke-direct {p0, v5, v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->traverseNode(Landroid/view/View;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/HashMap;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 177
    :cond_34
    :goto_34
    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mViewNodesHashMap:Ljava/util/HashMap;

    .line 178
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    .line 179
    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception p1

    .line 181
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_3f
    return-void
.end method

.method private traverseNode(Landroid/view/View;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/SparseArray<",
            "Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 223
    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->getCacheViewPathAndPosition(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 228
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getScreenNameAndTitle(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_62

    const-string v2, "$screen_name"

    .line 230
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 232
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 233
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_46
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewUtil;->instanceOfWebView(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_62
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7f

    .line 243
    check-cast p1, Landroid/view/ViewGroup;

    .line 244
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_6d
    if-ge v1, v0, :cond_7f

    .line 246
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_78

    .line 248
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->traverseNode(Landroid/view/View;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_78} :catch_7b

    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :catch_7b
    move-exception p1

    .line 253
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_7f
    return-void
.end method


# virtual methods
.method public clearViewNodeCache()V
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mViewNodesWithHashCode:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 75
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mViewNodesHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public clearWebViewCache()V
    .registers 2

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    .line 148
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 151
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public getCurrentWebView()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 188
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->traverseNode()V

    .line 190
    :cond_b
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_47

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    .line 193
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 194
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 195
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_43

    goto :goto_22

    :cond_42
    return-object v0

    :catch_43
    move-exception v0

    .line 201
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewNode(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;
    .registers 2

    .line 63
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->getViewPathAndPosition(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_a

    :catch_5
    move-exception p1

    .line 65
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method

.method public getViewNode(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;
    .registers 6

    const/4 v0, 0x0

    .line 123
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_4f

    if-eqz v1, :cond_1b

    .line 125
    :try_start_b
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_54

    .line 127
    :cond_1b
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 128
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_3d

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->isActive()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 129
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :cond_3d
    if-eqz v0, :cond_42

    .line 132
    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->traverseNode(Landroid/view/View;)V

    .line 134
    :cond_42
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mWebViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4a} :catch_4c

    move-object v1, p1

    goto :goto_54

    :catch_4c
    move-exception p1

    move-object v0, v1

    goto :goto_50

    :catch_4f
    move-exception p1

    .line 137
    :goto_50
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    move-object v1, v0

    :cond_54
    :goto_54
    return-object v1
.end method

.method public getViewNode(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mViewNodesHashMap:Ljava/util/HashMap;

    invoke-direct {p0, p2, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_5c

    if-nez v1, :cond_61

    if-eqz p1, :cond_25

    .line 94
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 95
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    goto :goto_25

    :catch_22
    move-exception p1

    move-object v0, v1

    goto :goto_5d

    :cond_25
    :goto_25
    if-nez v0, :cond_49

    .line 98
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getForegroundActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_49

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->isActive()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 100
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :cond_49
    if-eqz v0, :cond_4e

    .line 104
    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->traverseNode(Landroid/view/View;)V

    .line 106
    :cond_4e
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->mViewNodesHashMap:Ljava/util/HashMap;

    invoke-direct {p0, p2, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_5a} :catch_22

    move-object v1, p1

    goto :goto_61

    :catch_5c
    move-exception p1

    .line 109
    :goto_5d
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    move-object v1, v0

    :cond_61
    :goto_61
    return-object v1
.end method

.method public getViewPathAndPosition(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;
    .registers 3

    const/4 v0, 0x0

    .line 265
    invoke-direct {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewTreeStatusObservable;->getSingleViewPathAndPosition(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/util/visual/ViewNode;

    move-result-object p1

    return-object p1
.end method
