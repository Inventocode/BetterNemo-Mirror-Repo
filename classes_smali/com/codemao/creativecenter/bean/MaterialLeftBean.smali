.class public Lcom/codemao/creativecenter/bean/MaterialLeftBean;
.super Ljava/lang/Object;
.source "MaterialLeftBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public isSelect:Z

.field public name:Ljava/lang/String;

.field public srcRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/codemao/creativecenter/bean/MaterialLeftBean;->name:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/codemao/creativecenter/bean/MaterialLeftBean;->srcRes:I

    return-void
.end method
