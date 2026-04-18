.class public abstract Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeViewCmKeyboardDiscBinding.java"


# instance fields
.field public final cav:Lcom/codemao/creativecenter/customview/CmAngularView;

.field public final ckv:Lcom/codemao/creativecenter/customview/CmKeyboardView;

.field public final ivGoKeyboard:Landroid/widget/TextView;

.field public final tvTurntable:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/codemao/creativecenter/customview/CmAngularView;Lcom/codemao/creativecenter/customview/CmKeyboardView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 8

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 35
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;->cav:Lcom/codemao/creativecenter/customview/CmAngularView;

    .line 36
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;->ckv:Lcom/codemao/creativecenter/customview/CmKeyboardView;

    .line 37
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;->ivGoKeyboard:Landroid/widget/TextView;

    .line 38
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;->tvTurntable:Landroid/widget/TextView;

    return-void
.end method
