.class Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;
.super Ljava/lang/Object;
.source "CreativeSwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/customview/CreativeSwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewState"
.end annotation


# instance fields
.field buttonX:F

.field checkStateColor:I

.field checkedLineColor:I

.field radius:F


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V
    .registers 2

    .line 1176
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->copy(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V

    return-void
.end method

.method private copy(Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;)V
    .registers 3

    .line 1198
    iget v0, p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    iput v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->buttonX:F

    .line 1199
    iget v0, p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkStateColor:I

    iput v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkStateColor:I

    .line 1200
    iget v0, p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkedLineColor:I

    iput v0, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->checkedLineColor:I

    .line 1201
    iget p1, p1, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->radius:F

    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeSwitchButton$ViewState;->radius:F

    return-void
.end method
