.class public Lcom/codemao/nemo/bean/TypeItemData;
.super Ljava/lang/Object;
.source "TypeItemData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static SORT_NORMAL:Ljava/lang/String; = "ASC"

.field public static SORT_REVERSE:Ljava/lang/String; = "DESC"


# instance fields
.field private id:I

.field private key:Ljava/lang/String;

.field private leftIconRes:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/codemao/nemo/bean/TypeItemData;->id:I

    .line 23
    iput-object p2, p0, Lcom/codemao/nemo/bean/TypeItemData;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/codemao/nemo/bean/TypeItemData;->id:I

    .line 33
    iput-object p2, p0, Lcom/codemao/nemo/bean/TypeItemData;->name:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/codemao/nemo/bean/TypeItemData;->leftIconRes:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/codemao/nemo/bean/TypeItemData;->name:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/codemao/nemo/bean/TypeItemData;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/codemao/nemo/bean/TypeItemData;->id:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/codemao/nemo/bean/TypeItemData;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftIconRes()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/codemao/nemo/bean/TypeItemData;->leftIconRes:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/codemao/nemo/bean/TypeItemData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/codemao/nemo/bean/TypeItemData;->id:I

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/codemao/nemo/bean/TypeItemData;->key:Ljava/lang/String;

    return-void
.end method

.method public setLeftIconRes(I)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/codemao/nemo/bean/TypeItemData;->leftIconRes:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/codemao/nemo/bean/TypeItemData;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/codemao/nemo/bean/TypeItemData;->name:Ljava/lang/String;

    return-object v0
.end method
