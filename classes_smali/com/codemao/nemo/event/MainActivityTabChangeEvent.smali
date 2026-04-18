.class public Lcom/codemao/nemo/event/MainActivityTabChangeEvent;
.super Ljava/lang/Object;
.source "MainActivityTabChangeEvent.java"


# instance fields
.field private firstTab:I

.field private secondeTabName:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->firstTab:I

    .line 17
    iput-object p2, p0, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->secondeTabName:Ljava/lang/String;

    return-void
.end method

.method public static obtain(ILjava/lang/String;)Lcom/codemao/nemo/event/MainActivityTabChangeEvent;
    .registers 3

    .line 12
    new-instance v0, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getFirstTab()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->firstTab:I

    return v0
.end method

.method public getSecondeTabName()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->secondeTabName:Ljava/lang/String;

    return-object v0
.end method
