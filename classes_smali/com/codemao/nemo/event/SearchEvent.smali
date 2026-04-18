.class public Lcom/codemao/nemo/event/SearchEvent;
.super Ljava/lang/Object;
.source "SearchEvent.java"


# instance fields
.field public keyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/codemao/nemo/event/SearchEvent;->keyword:Ljava/lang/String;

    return-void
.end method
