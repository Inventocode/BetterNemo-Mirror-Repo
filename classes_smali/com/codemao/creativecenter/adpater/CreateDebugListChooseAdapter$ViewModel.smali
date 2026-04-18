.class Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;
.super Ljava/lang/Object;
.source "CreateDebugListChooseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewModel"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field isTitle:Z

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-boolean p2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;->isTitle:Z

    .line 143
    iput-object p3, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;->name:Ljava/lang/String;

    .line 144
    iput-object p4, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;->id:Ljava/lang/String;

    return-void
.end method
