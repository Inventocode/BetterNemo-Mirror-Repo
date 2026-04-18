.class public Lcom/codemao/nemo/bean/HorCommonInfo;
.super Ljava/lang/Object;
.source "HorCommonInfo.java"

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


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/codemao/nemo/bean/HorCommonInfo;->title:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/codemao/nemo/bean/HorCommonInfo;->data:Ljava/lang/Object;

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

    .line 31
    iget-object v0, p0, Lcom/codemao/nemo/bean/HorCommonInfo;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/bean/HorCommonInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/codemao/nemo/bean/HorCommonInfo;->data:Ljava/lang/Object;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/nemo/bean/HorCommonInfo;->title:Ljava/lang/String;

    return-void
.end method
