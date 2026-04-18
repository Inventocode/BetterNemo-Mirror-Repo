.class public Lcom/codemao/nemo/bean/PostShowLevel;
.super Ljava/lang/Object;
.source "PostShowLevel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private level_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/codemao/nemo/bean/PostShowLevel;->level_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLevel_type()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/nemo/bean/PostShowLevel;->level_type:Ljava/lang/String;

    return-object v0
.end method

.method public setLevel_type(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/codemao/nemo/bean/PostShowLevel;->level_type:Ljava/lang/String;

    return-void
.end method
