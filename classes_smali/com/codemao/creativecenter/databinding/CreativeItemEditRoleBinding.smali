.class public abstract Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeItemEditRoleBinding.java"


# instance fields
.field public final clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final desLayout:Landroid/widget/LinearLayout;

.field public final ivCollect:Landroid/widget/ImageView;

.field public final ivCopy:Landroid/widget/ImageView;

.field public final ivDel:Landroid/widget/ImageView;

.field public final ivLock:Landroid/widget/ImageView;

.field public final ivLockStatus:Landroid/widget/ImageView;

.field public final ivLockStatusLandscape:Landroid/widget/ImageView;

.field public final ivMore:Landroid/widget/ImageView;

.field public final ivProgress:Landroid/widget/ProgressBar;

.field public final ivRename:Landroid/widget/ImageView;

.field public final ivShadow:Landroid/widget/ImageView;

.field public final ivShow:Landroid/widget/ImageView;

.field public final ivVisible2:Landroid/widget/ImageView;

.field protected mActor:Lcom/codemao/creativestore/bean/ActorVO;

.field protected mIsLogin:Ljava/lang/Boolean;

.field protected mLandscapeStage:Ljava/lang/Boolean;

.field protected mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

.field public final moveViewBg:Landroid/view/View;

.field public final text:Landroid/widget/LinearLayout;

.field public final tvDes:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final viewBg:Landroid/view/View;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .registers 26

    move-object v0, p0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 104
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p5

    .line 105
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->desLayout:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 107
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCollect:Landroid/widget/ImageView;

    move-object v1, p8

    .line 108
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCopy:Landroid/widget/ImageView;

    move-object v1, p9

    .line 109
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivDel:Landroid/widget/ImageView;

    move-object v1, p10

    .line 110
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    move-object v1, p11

    .line 111
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatus:Landroid/widget/ImageView;

    move-object v1, p12

    .line 112
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatusLandscape:Landroid/widget/ImageView;

    move-object v1, p13

    .line 113
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivMore:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 114
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivProgress:Landroid/widget/ProgressBar;

    move-object/from16 v1, p15

    .line 115
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivRename:Landroid/widget/ImageView;

    move-object/from16 v1, p16

    .line 116
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShadow:Landroid/widget/ImageView;

    move-object/from16 v1, p17

    .line 117
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShow:Landroid/widget/ImageView;

    move-object/from16 v1, p18

    .line 118
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    move-object/from16 v1, p19

    .line 119
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->moveViewBg:Landroid/view/View;

    move-object/from16 v1, p20

    .line 120
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->text:Landroid/widget/LinearLayout;

    move-object/from16 v1, p21

    .line 121
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvDes:Landroid/widget/TextView;

    move-object/from16 v1, p22

    .line 122
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvTitle:Landroid/widget/TextView;

    move-object/from16 v1, p23

    .line 123
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->viewBg:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public abstract setActor(Lcom/codemao/creativestore/bean/ActorVO;)V
.end method

.method public abstract setIsLogin(Ljava/lang/Boolean;)V
.end method

.method public abstract setLandscapeStage(Ljava/lang/Boolean;)V
.end method

.method public abstract setObserver(Lcom/codemao/creativecenter/callback/ObserverAction;)V
.end method
