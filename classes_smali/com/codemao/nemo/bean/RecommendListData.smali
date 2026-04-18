.class public Lcom/codemao/nemo/bean/RecommendListData;
.super Ljava/lang/Object;
.source "RecommendListData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final TYPE_BEGINNER_FOOTER:I = 0x7

.field public static final TYPE_BEGINNER_RECOMMEND:I = 0x6

.field public static final TYPE_HEARD:I = 0x2

.field public static final TYPE_NEW_ACTIVE:I = 0x8

.field public static final TYPE_NEW_WORK:I = 0x3

.field public static final TYPE_STAGGERED:I = 0x5

.field public static final TYPE_THEME:I = 0x4

.field public static final TYPE_USER_LIST:I = 0x1

.field public static final TYPE_WORK_INFO:I


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/codemao/nemo/bean/RecommendListData;->type:I

    .line 20
    iput p1, p0, Lcom/codemao/nemo/bean/RecommendListData;->type:I

    .line 21
    iput-object p2, p0, Lcom/codemao/nemo/bean/RecommendListData;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendListData;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/codemao/nemo/bean/RecommendListData;->type:I

    return v0
.end method

.method public setType(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/codemao/nemo/bean/RecommendListData;->type:I

    return-void
.end method
