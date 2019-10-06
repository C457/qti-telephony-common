.class public Lorg/codeaurora/ims/ImsRadioUtilsV13;
.super Ljava/lang/Object;
.source "ImsRadioUtilsV13.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static createVerstatInfo(Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;)Lorg/codeaurora/ims/VerstatInfo;
    .locals 3
    .param p0, "verstatInfo"    # Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    .line 29
    new-instance v0, Lorg/codeaurora/ims/VerstatInfo;

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->canMarkUnwantedCall:Z

    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->verificationStatus:I

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/VerstatInfo;-><init>(ZI)V

    return-object v0
.end method

.method public static getCallFailCauseForImsReason(I)I
    .locals 2
    .param p0, "imsReason"    # I

    .line 34
    const/16 v0, 0x16d

    if-eq p0, v0, :cond_0

    .line 38
    const-class v0, Lorg/codeaurora/ims/ImsRadioUtilsV13;

    const-string v1, "Unsupported imsReason for ending call. Passing end cause as \'misc\'."

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const/16 v0, 0x224

    return v0

    .line 36
    :cond_0
    const/16 v0, 0x25a

    return v0
.end method

.method public static getImsReasonForCallFailCause(I)I
    .locals 1
    .param p0, "failCause"    # I

    .line 88
    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x64c

    packed-switch p0, :pswitch_data_1

    .line 139
    const/4 v0, 0x0

    return v0

    .line 130
    :pswitch_0
    const/16 v0, 0x655

    return v0

    .line 128
    :pswitch_1
    return v0

    .line 126
    :pswitch_2
    const/16 v0, 0x643

    return v0

    .line 124
    :pswitch_3
    const/16 v0, 0x642

    return v0

    .line 122
    :pswitch_4
    const/16 v0, 0x641

    return v0

    .line 120
    :pswitch_5
    const/16 v0, 0x654

    return v0

    .line 118
    :pswitch_6
    const/16 v0, 0x653

    return v0

    .line 116
    :pswitch_7
    const/16 v0, 0x652

    return v0

    .line 114
    :pswitch_8
    const/16 v0, 0x651

    return v0

    .line 112
    :pswitch_9
    const/16 v0, 0x650

    return v0

    .line 110
    :pswitch_a
    const/16 v0, 0x64f

    return v0

    .line 108
    :pswitch_b
    const/16 v0, 0x64e

    return v0

    .line 106
    :pswitch_c
    const/16 v0, 0x64d

    return v0

    .line 104
    :pswitch_d
    return v0

    .line 102
    :pswitch_e
    const/16 v0, 0x64b

    return v0

    .line 100
    :pswitch_f
    const/16 v0, 0x649

    return v0

    .line 98
    :pswitch_10
    const/16 v0, 0x648

    return v0

    .line 96
    :pswitch_11
    const/16 v0, 0x647

    return v0

    .line 94
    :pswitch_12
    const/16 v0, 0x646

    return v0

    .line 92
    :pswitch_13
    const/16 v0, 0x645

    return v0

    .line 90
    :pswitch_14
    const/16 v0, 0x644

    return v0

    .line 133
    :pswitch_15
    const/16 v0, 0x172

    return v0

    .line 135
    :pswitch_16
    const/16 v0, 0x171

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x20f
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x245
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isFailCauseIntroducedInV13(I)Ljava/lang/Boolean;
    .locals 1
    .param p0, "failCause"    # I

    .line 46
    packed-switch p0, :pswitch_data_0

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 69
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x245
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static migrateCallFailCauseFromV12(I)I
    .locals 1
    .param p0, "callFailCause"    # I

    .line 79
    const/16 v0, 0x225

    if-ne p0, v0, :cond_0

    .line 81
    goto :goto_0

    .line 79
    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private static migrateCallInfoFromV12(Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;

    .line 149
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;-><init>()V

    .line 150
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->state:I

    .line 151
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->index:I

    .line 152
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->toa:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->toa:I

    .line 153
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasIsMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMpty:Z

    .line 154
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMpty:Z

    .line 155
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasIsMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMT:Z

    .line 156
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMT:Z

    .line 157
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->als:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->als:I

    .line 158
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasIsVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoice:Z

    .line 159
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoice:Z

    .line 160
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasIsVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoicePrivacy:Z

    .line 161
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoicePrivacy:Z

    .line 162
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->number:Ljava/lang/String;

    .line 163
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->numberPresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->numberPresentation:I

    .line 164
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->name:Ljava/lang/String;

    .line 165
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->namePresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->namePresentation:I

    .line 167
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasCallDetails:Z

    .line 168
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 169
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 170
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 172
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 173
    .local v2, "extra":Ljava/lang/String;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v2    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 176
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 177
    .local v2, "localAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v2    # "localAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    goto :goto_1

    .line 180
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 181
    .local v2, "peerAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v2    # "peerAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    goto :goto_2

    .line 184
    :cond_2
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    .line 185
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    .line 186
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    .line 187
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 188
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 190
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasFailCause:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasFailCause:Z

    .line 191
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;->failCause:I

    .line 192
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->migrateCallFailCauseFromV12(I)I

    move-result v2

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->failCause:I

    .line 194
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 195
    .local v2, "errorinfo":Ljava/lang/Byte;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v2    # "errorinfo":Ljava/lang/Byte;
    goto :goto_3

    .line 198
    :cond_3
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 199
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->hasErrorDetails:Z

    .line 200
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 201
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 204
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsEncrypted:Z

    .line 205
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isEncrypted:Z

    .line 206
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasIsCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsCalledPartyRinging:Z

    .line 207
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->isCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isCalledPartyRinging:Z

    .line 208
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->historyInfo:Ljava/lang/String;

    .line 209
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasIsVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVideoConfSupported:Z

    .line 210
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->isVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVideoConfSupported:Z

    .line 211
    return-object v0
.end method

.method public static migrateCallListFromV12(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;",
            ">;"
        }
    .end annotation

    .line 217
    .local p0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;>;"
    if-nez p0, :cond_0

    .line 218
    const/4 v0, 0x0

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;

    .line 222
    .local v2, "from":Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->migrateCallInfoFromV12(Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;

    move-result-object v3

    .line 223
    .local v3, "to":Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v2    # "from":Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;
    .end local v3    # "to":Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;
    goto :goto_0

    .line 225
    :cond_1
    return-object v0
.end method

.method public static migrateColrInfoFromV10(Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    .locals 3
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    .line 230
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;-><init>()V

    .line 231
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    const/4 v1, 0x2

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->status:I

    .line 232
    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->provisionStatus:I

    .line 233
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->presentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->presentation:I

    .line 234
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->hasErrorDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->hasErrorDetails:Z

    .line 235
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 236
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 237
    return-object v0
.end method

.method public static migrateSuppServiceStatusFromV10(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;
    .locals 7
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    .line 242
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;-><init>()V

    .line 243
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->status:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->status:I

    .line 244
    const/4 v1, 0x2

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->provisionStatus:I

    .line 245
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->facilityType:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->facilityType:I

    .line 246
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->failureCause:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->cbNumListInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    .line 249
    .local v2, "numList":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 250
    .local v3, "info":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    iput v4, v3, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    .line 252
    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->cbNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;

    .line 253
    .local v5, "numInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    iget-object v6, v3, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->cbNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v5    # "numInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    goto :goto_1

    .line 255
    :cond_0
    iget-object v4, v0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->cbNumListInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v2    # "numList":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    .end local v3    # "info":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    goto :goto_0

    .line 258
    :cond_1
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->hasErrorDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->hasErrorDetails:Z

    .line 259
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 260
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 261
    return-object v0
.end method
