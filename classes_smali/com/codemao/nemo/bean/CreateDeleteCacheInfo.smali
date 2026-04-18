.class public Lcom/codemao/nemo/bean/CreateDeleteCacheInfo;
.super Ljava/lang/Object;
.source "CreateDeleteCacheInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_ACTOR:I = 0x1

.field public static final TYPE_SCENE:I = 0x0

.field public static final TYPE_STYLE:I = 0x2


# instance fields
.field private type:I

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/codemao/nemo/bean/CreateDeleteCacheInfo;->type:I

    .line 14
    iput-object p2, p0, Lcom/codemao/nemo/bean/CreateDeleteCacheInfo;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/codemao/nemo/bean/CreateDeleteCacheInfo;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/nemo/bean/CreateDeleteCacheInfo;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setType(I)V
    .registers 2

    .line 22
    iput p1, p0, Lcom/codemao/nemo/bean/CreateDeleteCacheInfo;->type:I

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/codemao/nemo/bean/CreateDeleteCacheInfo;->value:Ljava/lang/Object;

    return-void
.end method
